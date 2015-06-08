#
# Copyright 2015 Reverb Technologies, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
#
package WWW::SwaggerClient::VariablesApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);


#use WWW::Swagger::Model::Category;
#use WWW::Swagger::Model::Pet;


use WWW::SwaggerClient::APIClient;

our @EXPORT_OK = qw(
  correlations_post 
  public_variables_get 
  public_variables_search_search_get 
  variable_categories_get 
  variable_user_settings_post 
  variables_get 
  variables_post 
  variables_search_search_get 
  variables_variable_name_get 
  
);

sub new {
    my $class   = shift;
    my $default_api_client = WWW::SwaggerClient::APIClient->new;
    my (%self) = (
        'api_client' => $default_api_client,
        @_
    );

    #my $self = {
    #    #api_client => $options->{api_client}
    #    api_client => $default_api_client
    #}; 

    bless \%self, $class;

}

    
    #
    # correlations_post
    #
    # Store or Update a Correlation
    # 
    # @param string $cause  (required)
    # @param string $effect  (required)
    # @param string $correlationcoefficient  (required)
    # @param string $vote  (required)
    # @return void
    #
    sub correlations_post {
      my ($self, %args) = @_;

      
      # verify the required parameter 'cause' is set
      unless (exists $args{'cause'}) {
        croak("Missing the required parameter 'cause' when calling correlations_post");
      }
      
      # verify the required parameter 'effect' is set
      unless (exists $args{'effect'}) {
        croak("Missing the required parameter 'effect' when calling correlations_post");
      }
      
      # verify the required parameter 'correlationcoefficient' is set
      unless (exists $args{'correlationcoefficient'}) {
        croak("Missing the required parameter 'correlationcoefficient' when calling correlations_post");
      }
      
      # verify the required parameter 'vote' is set
      unless (exists $args{'vote'}) {
        croak("Missing the required parameter 'vote' when calling correlations_post");
      }
      

      # parse inputs
      my $_resource_path = '/correlations';
      $_resource_path =~ s/{format}/json/; # default format to json

      my $_method = 'POST';
      my $query_params = {};
      my $header_params = {};
      my $form_params = {};

      # 'Accept' and 'Content-Type' header
      my $_header_accept = $self->{api_client}->select_header_accept('application/json');
      if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
      }
      $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

       # query params
      if ( exists $args{'cause'}) {
        $query_params->{'cause'} = WWW::::APIClient::to_query_value($args{'cause'});
      } # query params
      if ( exists $args{'effect'}) {
        $query_params->{'effect'} = WWW::::APIClient::to_query_value($args{'effect'});
      } # query params
      if ( exists $args{'correlationcoefficient'}) {
        $query_params->{'correlationcoefficient'} = WWW::::APIClient::to_query_value($args{'correlationcoefficient'});
      } # query params
      if ( exists $args{'vote'}) {
        $query_params->{'vote'} = WWW::::APIClient::to_query_value($args{'vote'});
      }
      
      
      
      my $_body_data;
      

      # for HTTP post (form)
      #$_body_data = $_body ? undef : $form_params;

      # make the API Call
      
      $self->{api_client}->call_api($_resource_path, $_method,
                                             $query_params, $form_params,
                                             $header_params, $_body_data);
      return;
      
  }
  
    #
    # public_variables_get
    #
    # Get public variables
    # 
    # @return void
    #
    sub public_variables_get {
      my ($self, %args) = @_;

      

      # parse inputs
      my $_resource_path = '/public/variables';
      $_resource_path =~ s/{format}/json/; # default format to json

      my $_method = 'GET';
      my $query_params = {};
      my $header_params = {};
      my $form_params = {};

      # 'Accept' and 'Content-Type' header
      my $_header_accept = $self->{api_client}->select_header_accept('application/json');
      if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
      }
      $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

      
      
      
      
      my $_body_data;
      

      # for HTTP post (form)
      #$_body_data = $_body ? undef : $form_params;

      # make the API Call
      
      $self->{api_client}->call_api($_resource_path, $_method,
                                             $query_params, $form_params,
                                             $header_params, $_body_data);
      return;
      
  }
  
    #
    # public_variables_search_search_get
    #
    # Get top 5 PUBLIC variables with the most correlations
    # 
    # @param string $search Search query can be some fraction of a variable name. (required)
    # @param string $effect_or_cause Allows us to specify which column in the `correlations` table will be searched. Choices are effect or cause. (required)
    # @return void
    #
    sub public_variables_search_search_get {
      my ($self, %args) = @_;

      
      # verify the required parameter 'search' is set
      unless (exists $args{'search'}) {
        croak("Missing the required parameter 'search' when calling public_variables_search_search_get");
      }
      

      # parse inputs
      my $_resource_path = '/public/variables/search/{search}';
      $_resource_path =~ s/{format}/json/; # default format to json

      my $_method = 'GET';
      my $query_params = {};
      my $header_params = {};
      my $form_params = {};

      # 'Accept' and 'Content-Type' header
      my $_header_accept = $self->{api_client}->select_header_accept('application/json');
      if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
      }
      $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

       # query params
      if ( exists $args{'effect_or_cause'}) {
        $query_params->{'effectOrCause'} = WWW::::APIClient::to_query_value($args{'effect_or_cause'});
      }
      
       # path params
      if ( exists $args{'search'}) {
        my $_base_variable = "{" . "search" . "}";
        my $_base_value = WWW::SwaggerClient::APIClient::to_path_value($args{'search'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
      }
      
      my $_body_data;
      

      # for HTTP post (form)
      #$_body_data = $_body ? undef : $form_params;

      # make the API Call
      
      $self->{api_client}->call_api($_resource_path, $_method,
                                             $query_params, $form_params,
                                             $header_params, $_body_data);
      return;
      
  }
  
    #
    # variable_categories_get
    #
    # Get variable categories
    # 
    # @return void
    #
    sub variable_categories_get {
      my ($self, %args) = @_;

      

      # parse inputs
      my $_resource_path = '/variableCategories';
      $_resource_path =~ s/{format}/json/; # default format to json

      my $_method = 'GET';
      my $query_params = {};
      my $header_params = {};
      my $form_params = {};

      # 'Accept' and 'Content-Type' header
      my $_header_accept = $self->{api_client}->select_header_accept('application/json');
      if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
      }
      $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

      
      
      
      
      my $_body_data;
      

      # for HTTP post (form)
      #$_body_data = $_body ? undef : $form_params;

      # make the API Call
      
      $self->{api_client}->call_api($_resource_path, $_method,
                                             $query_params, $form_params,
                                             $header_params, $_body_data);
      return;
      
  }
  
    #
    # variable_user_settings_post
    #
    # Update User Settings for a Variable
    # 
    # @param ARRAY[VariableUserSettings] $sharing_data Variable user settings data (required)
    # @return void
    #
    sub variable_user_settings_post {
      my ($self, %args) = @_;

      
      # verify the required parameter 'sharing_data' is set
      unless (exists $args{'sharing_data'}) {
        croak("Missing the required parameter 'sharing_data' when calling variable_user_settings_post");
      }
      

      # parse inputs
      my $_resource_path = '/variableUserSettings';
      $_resource_path =~ s/{format}/json/; # default format to json

      my $_method = 'POST';
      my $query_params = {};
      my $header_params = {};
      my $form_params = {};

      # 'Accept' and 'Content-Type' header
      my $_header_accept = $self->{api_client}->select_header_accept('application/json');
      if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
      }
      $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

      
      
      
      
      my $_body_data;
       # body params
      if ( exists $args{'sharing_data'}) {
        $_body_data = $args{'sharing_data'};
      }

      # for HTTP post (form)
      #$_body_data = $_body ? undef : $form_params;

      # make the API Call
      
      $self->{api_client}->call_api($_resource_path, $_method,
                                             $query_params, $form_params,
                                             $header_params, $_body_data);
      return;
      
  }
  
    #
    # variables_get
    #
    # Get variables by the category name
    # 
    # @param int $user_id User id (required)
    # @param string $category_name Category name (required)
    # @return void
    #
    sub variables_get {
      my ($self, %args) = @_;

      

      # parse inputs
      my $_resource_path = '/variables';
      $_resource_path =~ s/{format}/json/; # default format to json

      my $_method = 'GET';
      my $query_params = {};
      my $header_params = {};
      my $form_params = {};

      # 'Accept' and 'Content-Type' header
      my $_header_accept = $self->{api_client}->select_header_accept('application/json');
      if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
      }
      $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

       # query params
      if ( exists $args{'user_id'}) {
        $query_params->{'userId'} = WWW::::APIClient::to_query_value($args{'user_id'});
      } # query params
      if ( exists $args{'category_name'}) {
        $query_params->{'categoryName'} = WWW::::APIClient::to_query_value($args{'category_name'});
      }
      
      
      
      my $_body_data;
      

      # for HTTP post (form)
      #$_body_data = $_body ? undef : $form_params;

      # make the API Call
      
      $self->{api_client}->call_api($_resource_path, $_method,
                                             $query_params, $form_params,
                                             $header_params, $_body_data);
      return;
      
  }
  
    #
    # variables_post
    #
    # Set variable
    # 
    # @param ARRAY[Variable] $variable_name Original name for the variable. (required)
    # @return void
    #
    sub variables_post {
      my ($self, %args) = @_;

      
      # verify the required parameter 'variable_name' is set
      unless (exists $args{'variable_name'}) {
        croak("Missing the required parameter 'variable_name' when calling variables_post");
      }
      

      # parse inputs
      my $_resource_path = '/variables';
      $_resource_path =~ s/{format}/json/; # default format to json

      my $_method = 'POST';
      my $query_params = {};
      my $header_params = {};
      my $form_params = {};

      # 'Accept' and 'Content-Type' header
      my $_header_accept = $self->{api_client}->select_header_accept('application/json');
      if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
      }
      $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

      
      
      
      
      my $_body_data;
       # body params
      if ( exists $args{'variable_name'}) {
        $_body_data = $args{'variable_name'};
      }

      # for HTTP post (form)
      #$_body_data = $_body ? undef : $form_params;

      # make the API Call
      
      $self->{api_client}->call_api($_resource_path, $_method,
                                             $query_params, $form_params,
                                             $header_params, $_body_data);
      return;
      
  }
  
    #
    # variables_search_search_get
    #
    # Get variables by search query
    # 
    # @param string $search Search query which may be an entire variable name or a fragment of one. (required)
    # @param string $category_name Filter variables by category name. The variable categories include Activity, Causes of Illness, Cognitive Performance, Conditions, Environment, Foods, Location, Miscellaneous, Mood, Nutrition, Physical Activity, Physique, Sleep, Social Interactions, Symptoms, Treatments, Vital Signs, and Work. (required)
    # @param string $source Specify a data source name to only return variables from a specific data source. (required)
    # @param int $limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (required)
    # @param int $offset Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10. (required)
    # @return void
    #
    sub variables_search_search_get {
      my ($self, %args) = @_;

      
      # verify the required parameter 'search' is set
      unless (exists $args{'search'}) {
        croak("Missing the required parameter 'search' when calling variables_search_search_get");
      }
      

      # parse inputs
      my $_resource_path = '/variables/search/{search}';
      $_resource_path =~ s/{format}/json/; # default format to json

      my $_method = 'GET';
      my $query_params = {};
      my $header_params = {};
      my $form_params = {};

      # 'Accept' and 'Content-Type' header
      my $_header_accept = $self->{api_client}->select_header_accept('application/json');
      if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
      }
      $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

       # query params
      if ( exists $args{'category_name'}) {
        $query_params->{'categoryName'} = WWW::::APIClient::to_query_value($args{'category_name'});
      } # query params
      if ( exists $args{'source'}) {
        $query_params->{'source'} = WWW::::APIClient::to_query_value($args{'source'});
      } # query params
      if ( exists $args{'limit'}) {
        $query_params->{'limit'} = WWW::::APIClient::to_query_value($args{'limit'});
      } # query params
      if ( exists $args{'offset'}) {
        $query_params->{'offset'} = WWW::::APIClient::to_query_value($args{'offset'});
      }
      
       # path params
      if ( exists $args{'search'}) {
        my $_base_variable = "{" . "search" . "}";
        my $_base_value = WWW::SwaggerClient::APIClient::to_path_value($args{'search'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
      }
      
      my $_body_data;
      

      # for HTTP post (form)
      #$_body_data = $_body ? undef : $form_params;

      # make the API Call
      
      $self->{api_client}->call_api($_resource_path, $_method,
                                             $query_params, $form_params,
                                             $header_params, $_body_data);
      return;
      
  }
  
    #
    # variables_variable_name_get
    #
    # Get info about a variable
    # 
    # @param string $variable_name Variable name (required)
    # @return void
    #
    sub variables_variable_name_get {
      my ($self, %args) = @_;

      
      # verify the required parameter 'variable_name' is set
      unless (exists $args{'variable_name'}) {
        croak("Missing the required parameter 'variable_name' when calling variables_variable_name_get");
      }
      

      # parse inputs
      my $_resource_path = '/variables/{variableName}';
      $_resource_path =~ s/{format}/json/; # default format to json

      my $_method = 'GET';
      my $query_params = {};
      my $header_params = {};
      my $form_params = {};

      # 'Accept' and 'Content-Type' header
      my $_header_accept = $self->{api_client}->select_header_accept('application/json');
      if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
      }
      $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

      
      
       # path params
      if ( exists $args{'variable_name'}) {
        my $_base_variable = "{" . "variableName" . "}";
        my $_base_value = WWW::SwaggerClient::APIClient::to_path_value($args{'variable_name'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
      }
      
      my $_body_data;
      

      # for HTTP post (form)
      #$_body_data = $_body ? undef : $form_params;

      # make the API Call
      
      $self->{api_client}->call_api($_resource_path, $_method,
                                             $query_params, $form_params,
                                             $header_params, $_body_data);
      return;
      
  }
  


1;