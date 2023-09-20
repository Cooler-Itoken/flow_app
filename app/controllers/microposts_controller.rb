class MicropostsController < ApplicationController
    before_action :logged_in_user, only: [:create, :destroy]
    before_action :correct_user,   only: :destroy

    def create
        # prompt = "以下の文章の質問に答えてください。文章:今日は何曜日？"
        # prompt = "以下の文章の質問に答えてください。文章:#{micropost_params["content"]}"
        prompt = "以下の私の強み・現状から、挑戦すべきアクションを140文字以内で簡潔に一つ提示してください。文章:#{micropost_params["content"]}"
        client = OpenAI::Client.new(access_token: @api_key)
        response = client.chat(
            parameters: {
            model: "gpt-3.5-turbo",
            messages: [{ role: "user", content: prompt}],
            temperature: 0.7,
            }
        )
        revised_content = response.dig("choices", 0, "message", "content")
        revised_content = revised_content.to_s.delete('「」”')
        @micropost = current_user.microposts.build(content: revised_content[0..139])
        # @micropost = current_user.microposts.build(micropost_params)
        @micropost.image.attach(params[:micropost][:image])
        if @micropost.save
            flash[:success] = "Micropost created!"
            redirect_to root_url
        else
            @feed_items = current_user.feed.paginate(page: params[:page])
            render 'static_pages/home', status: :unprocessable_entity
        end
    end

    def destroy
        @micropost.destroy
        flash[:success] = "Micropost deleted"
        if request.referrer.nil?
            redirect_to root_url, status: :see_other
        else
            redirect_to request.referrer, status: :see_other
        end
    end

    private

        def micropost_params
            params.require(:micropost).permit(:content, :image)
        end

        def correct_user
            @micropost = current_user.microposts.find_by(id: params[:id])
            redirect_to root_url, status: :see_other if @micropost.nil?
        end
end
