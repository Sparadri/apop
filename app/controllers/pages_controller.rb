class PagesController < ApplicationController
  def home
    @client = Client.new

    @demo_product = [
      {
        picture: 'demo_create.png',
        fa: 'fa-plus',
        title: 'Enable your users to share greater content',
        text: "We bring all the best practices from Facebook, Twitter & Medium to your website."
      },
      {
        picture: 'demo_dash.png',
        fa: 'fa-users',
        title: 'Allow users to navigate through discussions',
        text: "We help increasing retention by enabling your users to easily navigate among comments."
      },
      {
        picture: 'demo_discuss.png',
        fa: 'fa-sort-numeric-desc',
        title: 'Always display first most relevant comments',
        text: "We've built a strong algorithm to sort comments, based on user history, like/dislike ratio & type of content shared."
      },
      {
        picture: 'demo_ads.png',
        fa: 'fa-compress',
        title: 'Grow monetization with native advertising',
        text: "In-flow sponsored ads have the best performances. We partner with advertising agencies to help you monetize this section."
      }
    ]

    @moderation = [
      {
        id: "cust-moderation",
        fa: "fa-check-square",
        title: "Make Moderation More Automated",
        text: "Decide everything on users, comments & replies."
      },
      {
        id: "cust-design",
        fa: "fa-pencil-square",
        title: "Customize Comment Templates",
        text: "Easily customize the layout so it best fits your design."
      },
      {
        id: "cust-perf",
        fa: "fa-table",
        title: "Manage Discussions Based on Data",
        text: "Review Performances with an intuitive performance dashboard. Make data driven decisions."
      }
    ]

    @design_settings = [
      {
        category: "design",
        items:
        [{
          topic: "design",
          title: "Color scheme",
          goal: "",
          dropdown: ["gray", "blue", "black", "red"],
          placeholder: "gray",
          separator: "keep base colors"
        },
        {
          topic: "design",
          title: "Base Font Family",
          goal: "",
          dropdown: ["Georgio", "Arial", "Helvetica", "Roboto", "Palatino"],
          placeholder: "Palatino",
          separator: "Times New Roman"
        },
        {
          topic: "design",
          title: "Base font size",
          goal: "",
          dropdown: ["12px", "13px", "14px", "15px", "16px"],
          placeholder: "14px",
          separator: "keep base font size"
        }]
      }
    ]

    @moderation_settings = [
      {
        category: "users",
        items:
        [{
          topic: "users",
          title: "The following users have the right to comment",
          goal: "Adjust content strategy with comments rights",
          dropdown: ["subscribed users", "logged in users", "no users"],
          placeholder: "subscribed users",
          separator: "all users"
        },
        {
          topic: "users",
          title: "Users are allowed to comment if they have signed in since",
          goal: "",
          dropdown: ["1 day", "1 week"],
          placeholder: "1 day",
          separator: "immediate"
        },
        {
          topic: "users",
          title: "Users' comments manually moderated",
          goal: "",
          dropdown: ["all comments", "only from not verified users"],
          placeholder: "not verified users",
          separator: "none"
        },
        {
          topic: "users",
          title: "Type of content shareable",
          goal: "",
          dropdown: ["video & text", "picture & text"],
          placeholder: "video & picture",
          separator: "only text"
        }]
      },
      {
        category: "comments",
        items:
        [{
          topic: "comments",
          title: "Max number of comments per person & per day",
          goal: "",
          dropdown: ["1 comments", "2 comments", "3 comments", "4 comments", "5 comments"],
          placeholder: "5 comments",
          separator: "no limit"
        },
        {
          topic: "comments",
          title: "Max number of comments per person & per article",
          goal: "",
          dropdown: ["1", "2", "3", "4", "5", "6"],
          placeholder: "1 comment",
          separator: "no limit"
        },
        {
          topic: "comments",
          title: "User can share comments on",
          goal: "",
          dropdown: ["facebook", "linkedIn", "twitter", "by email"],
          placeholder: "all social networks",
          separator: "all social networks"
        },
        {
          topic: "comments",
          title: "Form - min number of characters",
          goal: "",
          dropdown: ["1 character", "5 characters", "10 characters", "20 characters"],
          placeholder: "10 characters",
          separator: "no minimum"
        },
        {
          topic: "comments",
          title: "Form - max number of characters",
          goal: "",
          dropdown: ["50 characters", "100 characters", "500 characters", "1,000 characters"],
          placeholder: "100 characters",
          separator: "no maximum"
        }]
      },
      {
        category: "Replies",
        items:
        [{
          topic: "replies",
          title: "Maximum number of times a user can answer a comment",
          goal: "Avoid endless discussions",
          dropdown: ["0", "2", "3"],
          placeholder: "2 answers max per user",
          separator: "no limit"
        },
        {
          topic: "replies",
          title: "The following users have the right to answer",
          goal: "",
          dropdown: ["no answers allowed", "logged in users", "subscribed users", "verified users", "subscribed & verified"],
          placeholder: "verified users",
          separator: "all users"

        },
        {
          topic: "replies",
          title: "Max number of comments shown by default under each comment",
          goal: "Make sure that only the best content is shown to readers",
          dropdown: ["1 reply", "2 replies", "3 replies", "4 replies", "5 replies"],
          placeholder: "2 replies",
          separator: "show all replies"
        },
        {
          topic: "replies",
          title: "Form - min number of characters",
          goal: "",
          dropdown: ["1 character", "5 characters", "10 characters", "20 characters"],
          placeholder: "10 characters",
          separator: "no minimum"
        },
        {
          topic: "replies",
          title: "Form - max number of characters",
          goal: "",
          dropdown: ["50 characters", "100 characters", "500 characters", "1,000 characters"],
          placeholder: "100 characters",
          separator: "no maximum"
        }]
      },
      {
        category: "other",
        items:
        [{
          topic: "Algorithm",
          title: "Adjust the weight of each criteria in the algorithm",
          goal: "",
          dropdown: [],
          placeholder: "pending dev",
          separator: ""
        },
        {
          topic: "Social Interactions",
          title: "Max number of social interactions before forced login:",
          goal: "Increase the ability to spot bad content",
          dropdown: ["1 interaction", "2 interactions", "3 interactions", "4 interactions", "5 interactions", "6 interactions"],
          placeholder: "4 interactions",
          separator: "always allow interactions"
        }]
      }
    ]

    @dev = [
      {
        fa: "fa-code",
        title: "Code Embedded & Customized Architecture",
        text: "Copy & paste our snippet to your website, decide on custom design & share your data feed.",
        },
      {
        fa: "fa-tablet",
        title: "All Devices Supported",
        text: "We provide an outstanding cross-device user experience.",
        },
      {
        fa: "fa-key",
        title: "Highly Secured Data Management",
        text: "Our engineers work hard on building a very secured environment.",
        },
      {
        fa: "fa-user",
        title: "Silent Login",
        text: "Users are yours: they don't login to our tool. You only share an anonymized data feed.",
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
        title: "Increase Retention",
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








