class PagesController < ApplicationController
  def home
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
  end
end








