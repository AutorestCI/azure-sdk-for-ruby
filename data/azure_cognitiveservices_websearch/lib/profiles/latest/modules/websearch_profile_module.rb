# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_websearch'

module Azure::WebSearch::Profiles::Latest
  Web = Azure::CognitiveServices::WebSearch::V1_0::Web

  module Models
    RankingRankingItem = Azure::CognitiveServices::WebSearch::V1_0::Models::RankingRankingItem
    RankingRankingGroup = Azure::CognitiveServices::WebSearch::V1_0::Models::RankingRankingGroup
    WebMetaTag = Azure::CognitiveServices::WebSearch::V1_0::Models::WebMetaTag
    RankingRankingResponse = Azure::CognitiveServices::WebSearch::V1_0::Models::RankingRankingResponse
    WebWebGrouping = Azure::CognitiveServices::WebSearch::V1_0::Models::WebWebGrouping
    Error = Azure::CognitiveServices::WebSearch::V1_0::Models::Error
    Query = Azure::CognitiveServices::WebSearch::V1_0::Models::Query
    TimeZoneTimeZoneInformation = Azure::CognitiveServices::WebSearch::V1_0::Models::TimeZoneTimeZoneInformation
    ResponseBase = Azure::CognitiveServices::WebSearch::V1_0::Models::ResponseBase
    QueryContext = Azure::CognitiveServices::WebSearch::V1_0::Models::QueryContext
    ImageObject = Azure::CognitiveServices::WebSearch::V1_0::Models::ImageObject
    CreativeWork = Azure::CognitiveServices::WebSearch::V1_0::Models::CreativeWork
    WebPage = Azure::CognitiveServices::WebSearch::V1_0::Models::WebPage
    NewsArticle = Azure::CognitiveServices::WebSearch::V1_0::Models::NewsArticle
    VideoObject = Azure::CognitiveServices::WebSearch::V1_0::Models::VideoObject
    Identifiable = Azure::CognitiveServices::WebSearch::V1_0::Models::Identifiable
    Response = Azure::CognitiveServices::WebSearch::V1_0::Models::Response
    SearchResponse = Azure::CognitiveServices::WebSearch::V1_0::Models::SearchResponse
    Thing = Azure::CognitiveServices::WebSearch::V1_0::Models::Thing
    Answer = Azure::CognitiveServices::WebSearch::V1_0::Models::Answer
    Computation = Azure::CognitiveServices::WebSearch::V1_0::Models::Computation
    SearchResultsAnswer = Azure::CognitiveServices::WebSearch::V1_0::Models::SearchResultsAnswer
    WebWebAnswer = Azure::CognitiveServices::WebSearch::V1_0::Models::WebWebAnswer
    Images = Azure::CognitiveServices::WebSearch::V1_0::Models::Images
    News = Azure::CognitiveServices::WebSearch::V1_0::Models::News
    RelatedSearchesRelatedSearchAnswer = Azure::CognitiveServices::WebSearch::V1_0::Models::RelatedSearchesRelatedSearchAnswer
    SpellSuggestions = Azure::CognitiveServices::WebSearch::V1_0::Models::SpellSuggestions
    TimeZone = Azure::CognitiveServices::WebSearch::V1_0::Models::TimeZone
    Videos = Azure::CognitiveServices::WebSearch::V1_0::Models::Videos
    Places = Azure::CognitiveServices::WebSearch::V1_0::Models::Places
    ErrorResponse = Azure::CognitiveServices::WebSearch::V1_0::Models::ErrorResponse
    Intangible = Azure::CognitiveServices::WebSearch::V1_0::Models::Intangible
    MediaObject = Azure::CognitiveServices::WebSearch::V1_0::Models::MediaObject
    Article = Azure::CognitiveServices::WebSearch::V1_0::Models::Article
    StructuredValue = Azure::CognitiveServices::WebSearch::V1_0::Models::StructuredValue
    AnswerType = Azure::CognitiveServices::WebSearch::V1_0::Models::AnswerType
    ErrorCode = Azure::CognitiveServices::WebSearch::V1_0::Models::ErrorCode
    ErrorSubCode = Azure::CognitiveServices::WebSearch::V1_0::Models::ErrorSubCode
    Freshness = Azure::CognitiveServices::WebSearch::V1_0::Models::Freshness
    SafeSearch = Azure::CognitiveServices::WebSearch::V1_0::Models::SafeSearch
    TextFormat = Azure::CognitiveServices::WebSearch::V1_0::Models::TextFormat
  end

  #
  # WebSearchDataClass
  #
  class WebSearchDataClass
    attr_reader :web, :configurable, :base_url, :options, :model_classes

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_default_options
      else
        @options = options
      end

      reset!(options)

      @configurable = self
      @base_url = options[:base_url].nil? ? nil:options[:base_url]
      @options = options[:options].nil? ? nil:options[:options]

      client_0 = Azure::CognitiveServices::WebSearch::V1_0::WebSearchClient.new(configurable.credentials, base_url, options)
      if(client_0.respond_to?(:subscription_id))
        client_0.subscription_id = configurable.subscription_id
      end
      add_telemetry(client_0)
      @web = client_0.web

      @model_classes = ModelClasses.new
    end

    def add_telemetry(client)
      profile_information = 'Profiles/Latest/WebSearch'
      client.add_user_agent_information(profile_information)
    end

  end

  class ModelClasses
    def ranking_ranking_item
      Azure::CognitiveServices::WebSearch::V1_0::Models::RankingRankingItem
    end
    def ranking_ranking_group
      Azure::CognitiveServices::WebSearch::V1_0::Models::RankingRankingGroup
    end
    def web_meta_tag
      Azure::CognitiveServices::WebSearch::V1_0::Models::WebMetaTag
    end
    def ranking_ranking_response
      Azure::CognitiveServices::WebSearch::V1_0::Models::RankingRankingResponse
    end
    def web_web_grouping
      Azure::CognitiveServices::WebSearch::V1_0::Models::WebWebGrouping
    end
    def error
      Azure::CognitiveServices::WebSearch::V1_0::Models::Error
    end
    def query
      Azure::CognitiveServices::WebSearch::V1_0::Models::Query
    end
    def time_zone_time_zone_information
      Azure::CognitiveServices::WebSearch::V1_0::Models::TimeZoneTimeZoneInformation
    end
    def response_base
      Azure::CognitiveServices::WebSearch::V1_0::Models::ResponseBase
    end
    def query_context
      Azure::CognitiveServices::WebSearch::V1_0::Models::QueryContext
    end
    def image_object
      Azure::CognitiveServices::WebSearch::V1_0::Models::ImageObject
    end
    def creative_work
      Azure::CognitiveServices::WebSearch::V1_0::Models::CreativeWork
    end
    def web_page
      Azure::CognitiveServices::WebSearch::V1_0::Models::WebPage
    end
    def news_article
      Azure::CognitiveServices::WebSearch::V1_0::Models::NewsArticle
    end
    def video_object
      Azure::CognitiveServices::WebSearch::V1_0::Models::VideoObject
    end
    def identifiable
      Azure::CognitiveServices::WebSearch::V1_0::Models::Identifiable
    end
    def response
      Azure::CognitiveServices::WebSearch::V1_0::Models::Response
    end
    def search_response
      Azure::CognitiveServices::WebSearch::V1_0::Models::SearchResponse
    end
    def thing
      Azure::CognitiveServices::WebSearch::V1_0::Models::Thing
    end
    def answer
      Azure::CognitiveServices::WebSearch::V1_0::Models::Answer
    end
    def computation
      Azure::CognitiveServices::WebSearch::V1_0::Models::Computation
    end
    def search_results_answer
      Azure::CognitiveServices::WebSearch::V1_0::Models::SearchResultsAnswer
    end
    def web_web_answer
      Azure::CognitiveServices::WebSearch::V1_0::Models::WebWebAnswer
    end
    def images
      Azure::CognitiveServices::WebSearch::V1_0::Models::Images
    end
    def news
      Azure::CognitiveServices::WebSearch::V1_0::Models::News
    end
    def related_searches_related_search_answer
      Azure::CognitiveServices::WebSearch::V1_0::Models::RelatedSearchesRelatedSearchAnswer
    end
    def spell_suggestions
      Azure::CognitiveServices::WebSearch::V1_0::Models::SpellSuggestions
    end
    def time_zone
      Azure::CognitiveServices::WebSearch::V1_0::Models::TimeZone
    end
    def videos
      Azure::CognitiveServices::WebSearch::V1_0::Models::Videos
    end
    def places
      Azure::CognitiveServices::WebSearch::V1_0::Models::Places
    end
    def error_response
      Azure::CognitiveServices::WebSearch::V1_0::Models::ErrorResponse
    end
    def intangible
      Azure::CognitiveServices::WebSearch::V1_0::Models::Intangible
    end
    def media_object
      Azure::CognitiveServices::WebSearch::V1_0::Models::MediaObject
    end
    def article
      Azure::CognitiveServices::WebSearch::V1_0::Models::Article
    end
    def structured_value
      Azure::CognitiveServices::WebSearch::V1_0::Models::StructuredValue
    end
    def answer_type
      Azure::CognitiveServices::WebSearch::V1_0::Models::AnswerType
    end
    def error_code
      Azure::CognitiveServices::WebSearch::V1_0::Models::ErrorCode
    end
    def error_sub_code
      Azure::CognitiveServices::WebSearch::V1_0::Models::ErrorSubCode
    end
    def freshness
      Azure::CognitiveServices::WebSearch::V1_0::Models::Freshness
    end
    def safe_search
      Azure::CognitiveServices::WebSearch::V1_0::Models::SafeSearch
    end
    def text_format
      Azure::CognitiveServices::WebSearch::V1_0::Models::TextFormat
    end
  end
end
