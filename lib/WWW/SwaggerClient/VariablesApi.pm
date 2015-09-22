#
# Copyright 2015 SmartBear Software
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

use WWW::SwaggerClient::ApiClient;
use WWW::SwaggerClient::Configuration;

sub new {
    my $class   = shift;
    my $default_api_client = $WWW::SwaggerClient::Configuration::api_client ? $WWW::SwaggerClient::Configuration::api_client  : WWW::SwaggerClient::ApiClient->new;
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
# v1_public_variables_get
#
# Get public variables
# 
# @return Variable
#
sub v1_public_variables_get {
    my ($self, %args) = @_;

    

    # parse inputs
    my $_resource_path = '/v1/public/variables';
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
    

    # authentication setting, if any
    my $auth_settings = ['oauth2'];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('Variable', $response);
    return $_response_object;
    
}
#
# v1_public_variables_search_search_get
#
# Get top 5 PUBLIC variables with the most correlations
# 
# @param string $search Search query can be some fraction of a variable name. (required)
# @param string $effect_or_cause Allows us to specify which column in the `correlations` table will be searched. Choices are effect or cause. (optional)
# @param int $limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (optional)
# @param int $offset Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10. (optional)
# @param int $sort Sort by given field. If the field is prefixed with `-, it will sort in descending order. (optional)
# @return Variable
#
sub v1_public_variables_search_search_get {
    my ($self, %args) = @_;

    
    # verify the required parameter 'search' is set
    unless (exists $args{'search'}) {
      croak("Missing the required parameter 'search' when calling v1_public_variables_search_search_get");
    }
    

    # parse inputs
    my $_resource_path = '/v1/public/variables/search/{search}';
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
        $query_params->{'effectOrCause'} = $self->{api_client}->to_query_value($args{'effect_or_cause'});
    }# query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }# query params
    if ( exists $args{'offset'}) {
        $query_params->{'offset'} = $self->{api_client}->to_query_value($args{'offset'});
    }# query params
    if ( exists $args{'sort'}) {
        $query_params->{'sort'} = $self->{api_client}->to_query_value($args{'sort'});
    }
    
    # path params
    if ( exists $args{'search'}) {
        my $_base_variable = "{" . "search" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'search'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }
    
    my $_body_data;
    

    # authentication setting, if any
    my $auth_settings = ['oauth2'];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('Variable', $response);
    return $_response_object;
    
}
#
# v1_user_variables_post
#
# Update User Settings for a Variable
# 
# @param UserVariables $sharing_data Variable user settings data (required)
# @return void
#
sub v1_user_variables_post {
    my ($self, %args) = @_;

    
    # verify the required parameter 'sharing_data' is set
    unless (exists $args{'sharing_data'}) {
      croak("Missing the required parameter 'sharing_data' when calling v1_user_variables_post");
    }
    

    # parse inputs
    my $_resource_path = '/v1/userVariables';
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

    # authentication setting, if any
    my $auth_settings = ['oauth2'];

    # make the API Call
    
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
    
}
#
# v1_variable_categories_get
#
# Variable categories
# 
# @return ARRAY[VariableCategory]
#
sub v1_variable_categories_get {
    my ($self, %args) = @_;

    

    # parse inputs
    my $_resource_path = '/v1/variableCategories';
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
    

    # authentication setting, if any
    my $auth_settings = ['oauth2'];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[VariableCategory]', $response);
    return $_response_object;
    
}
#
# v1_variables_get
#
# Get variables by the category name
# 
# @param int $user_id User id (optional)
# @param string $category Filter data by category (optional)
# @param int $limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (optional)
# @param int $offset Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10. (optional)
# @param int $sort Sort by given field. If the field is prefixed with `-, it will sort in descending order. (optional)
# @return Variable
#
sub v1_variables_get {
    my ($self, %args) = @_;

    

    # parse inputs
    my $_resource_path = '/v1/variables';
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
        $query_params->{'userId'} = $self->{api_client}->to_query_value($args{'user_id'});
    }# query params
    if ( exists $args{'category'}) {
        $query_params->{'category'} = $self->{api_client}->to_query_value($args{'category'});
    }# query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }# query params
    if ( exists $args{'offset'}) {
        $query_params->{'offset'} = $self->{api_client}->to_query_value($args{'offset'});
    }# query params
    if ( exists $args{'sort'}) {
        $query_params->{'sort'} = $self->{api_client}->to_query_value($args{'sort'});
    }
    
    
    
    my $_body_data;
    

    # authentication setting, if any
    my $auth_settings = ['basicAuth', 'oauth2'];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('Variable', $response);
    return $_response_object;
    
}
#
# v1_variables_post
#
# Create Variables
# 
# @param VariablesNew $variable_name Original name for the variable. (required)
# @return void
#
sub v1_variables_post {
    my ($self, %args) = @_;

    
    # verify the required parameter 'variable_name' is set
    unless (exists $args{'variable_name'}) {
      croak("Missing the required parameter 'variable_name' when calling v1_variables_post");
    }
    

    # parse inputs
    my $_resource_path = '/v1/variables';
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

    # authentication setting, if any
    my $auth_settings = ['oauth2'];

    # make the API Call
    
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
    
}
#
# v1_variables_search_search_get
#
# Get variables by search query
# 
# @param string $search Search query which may be an entire variable name or a fragment of one. (required)
# @param string $category_name Filter variables by category name. The variable categories include Activity, Causes of Illness, Cognitive Performance, Conditions, Environment, Foods, Location, Miscellaneous, Mood, Nutrition, Physical Activity, Physique, Sleep, Social Interactions, Symptoms, Treatments, Vital Signs, and Work. (optional)
# @param string $source Specify a data source name to only return variables from a specific data source. (optional)
# @param int $limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (optional)
# @param int $offset Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10. (optional)
# @return ARRAY[Variable]
#
sub v1_variables_search_search_get {
    my ($self, %args) = @_;

    
    # verify the required parameter 'search' is set
    unless (exists $args{'search'}) {
      croak("Missing the required parameter 'search' when calling v1_variables_search_search_get");
    }
    

    # parse inputs
    my $_resource_path = '/v1/variables/search/{search}';
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
        $query_params->{'categoryName'} = $self->{api_client}->to_query_value($args{'category_name'});
    }# query params
    if ( exists $args{'source'}) {
        $query_params->{'source'} = $self->{api_client}->to_query_value($args{'source'});
    }# query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }# query params
    if ( exists $args{'offset'}) {
        $query_params->{'offset'} = $self->{api_client}->to_query_value($args{'offset'});
    }
    
    # path params
    if ( exists $args{'search'}) {
        my $_base_variable = "{" . "search" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'search'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }
    
    my $_body_data;
    

    # authentication setting, if any
    my $auth_settings = ['oauth2'];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[Variable]', $response);
    return $_response_object;
    
}
#
# v1_variables_variable_name_get
#
# Get info about a variable
# 
# @param string $variable_name Variable name (required)
# @return Variable
#
sub v1_variables_variable_name_get {
    my ($self, %args) = @_;

    
    # verify the required parameter 'variable_name' is set
    unless (exists $args{'variable_name'}) {
      croak("Missing the required parameter 'variable_name' when calling v1_variables_variable_name_get");
    }
    

    # parse inputs
    my $_resource_path = '/v1/variables/{variableName}';
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
        my $_base_value = $self->{api_client}->to_path_value($args{'variable_name'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }
    
    my $_body_data;
    

    # authentication setting, if any
    my $auth_settings = ['oauth2'];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('Variable', $response);
    return $_response_object;
    
}


1;
