class PagesController < ApplicationController
  def home
    @client = Client.new
    @moderation = [
      {
        fa: "fa-check-square",
        title: "Make Moderation Intuitive",
        text: "Easily detect & moderate spams or bad comments: with our moderation algorithm, fastly detect them."
      },
      {
        fa: "fa-pencil-square",
        title: "Customize Comment Templates",
        text: "Simply customize the layout of our pluggin so it best serves your strategy & the design of your website."
      },
      {
        fa: "fa-table",
        title: "Manage Discussions Based on Data",
        text: "Review Performances with an intuitive performance dashboard. Make data driven decisions."
      }
    ]

    @dev = [
      {
        fa: "fa-code",
        title: "Code Embedded",
        text: "Copy & paste our snippet to your website and share your data feed.",
        },
      {
        fa: "fa-home",
        title: "Customized Architecture",
        text: "Our API adapts your framework.",
        },
      {
        fa: "fa-tablet",
        title: "All Devices Supported",
        text: "We provide an outstanding cross-device UX.",
        },
      {
        fa: "fa-key",
        title: "Highly Secured Data Management",
        text: "Our engineers work hard on building a very secured environment.",
        },
      {
        fa: "fa-user",
        title: "Silent Login",
        text: "Users are yours: they don't login to our tool.",
        }
    ]

    @features = [
      {
        fa: "fa-line-chart",
        title: "Grow Your Community",
        content: "Shared content through social media plays an ever increasing role in bringing more traffic to your website. Make you best users' comments more shareable by your whole community. By increasing the quality of comments, sorting them such as most relevant comments pop up will ultimately grow your presency & increase your number of visitors."
      },
      {
        fa: "fa-users",
        title: "Increase Returning Customers",
        content: "The web is now social. User retention increases as their interactions with your content grows. Provide to your customer the best social experience & let them enrich your content. With a smart powerful comment strategy, the number of account creation & logins increases. Growing this database is key in the path to monetization."
      },
      {
        fa: "fa-eur",
        title: "Unlock Premium Advertising*",
        content: "Leverage your user engagement to generate revenues & monetize your audience by unlocking sponsored comments advertisements."
      }
    ]
  end
end








