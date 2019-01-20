module ApplicationHelper

    def user_cannot_access_content
        !user_signed_in? || current_user.member?
    end

    def current_user_is_the_author
        user_signed_in? && current_user == @article.user
    end

    def current_user_is_a_subscriber
        user_signed_in? && current_user.subscriber?
    end
end
