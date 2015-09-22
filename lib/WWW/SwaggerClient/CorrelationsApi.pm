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
package WWW::SwaggerClient::CorrelationsApi;

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
# v1_correlations_get
#
# Get correlations
# 
# @param string $effect ORIGINAL variable name of the effect variable for which the user desires correlations (optional)
# @param string $cause ORIGINAL variable name of the cause variable for which the user desires correlations (optional)
# @param int $limit The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. (optional)
# @param int $offset Now suppose you wanted to show results 11-20. You&#39;d set the offset to 10 and the limit to 10. (optional)
# @param int $sort Sort by given field. If the field is prefixed with `-, it will sort in descending order. (optional)
# @return ARRAY[Correlation]
#
sub v1_correlations_get {
    my ($self, %args) = @_;

    

    # parse inputs
    my $_resource_path = '/v1/correlations';
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
    if ( exists $args{'effect'}) {
        $query_params->{'effect'} = $self->{api_client}->to_query_value($args{'effect'});
    }# query params
    if ( exists $args{'cause'}) {
        $query_params->{'cause'} = $self->{api_client}->to_query_value($args{'cause'});
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
    my $auth_settings = ['oauth2'];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[Correlation]', $response);
    return $_response_object;
    
}
#
# v1_correlations_post
#
# Store or Update a Correlation
# 
# @param PostCorrelation $body Provides correlation data (required)
# @return void
#
sub v1_correlations_post {
    my ($self, %args) = @_;

    
    # verify the required parameter 'body' is set
    unless (exists $args{'body'}) {
      croak("Missing the required parameter 'body' when calling v1_correlations_post");
    }
    

    # parse inputs
    my $_resource_path = '/v1/correlations';
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
    if ( exists $args{'body'}) {
        $_body_data = $args{'body'};
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
# v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get
#
# Search user correlations for a given cause
# 
# @param int $organization_id Organization ID (required)
# @param int $user_id User id (required)
# @param string $variable_name Effect variable name (required)
# @param string $organization_token Organization access token (required)
# @param string $include_public Include bublic correlations, Can be \&quot;1\&quot; or empty. (optional)
# @return ARRAY[Correlation]
#
sub v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get {
    my ($self, %args) = @_;

    
    # verify the required parameter 'organization_id' is set
    unless (exists $args{'organization_id'}) {
      croak("Missing the required parameter 'organization_id' when calling v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get");
    }
    
    # verify the required parameter 'user_id' is set
    unless (exists $args{'user_id'}) {
      croak("Missing the required parameter 'user_id' when calling v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get");
    }
    
    # verify the required parameter 'variable_name' is set
    unless (exists $args{'variable_name'}) {
      croak("Missing the required parameter 'variable_name' when calling v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get");
    }
    
    # verify the required parameter 'organization_token' is set
    unless (exists $args{'organization_token'}) {
      croak("Missing the required parameter 'organization_token' when calling v1_organizations_organization_id_users_user_id_variables_variable_name_causes_get");
    }
    

    # parse inputs
    my $_resource_path = '/v1/organizations/{organizationId}/users/{userId}/variables/{variableName}/causes';
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
    if ( exists $args{'organization_token'}) {
        $query_params->{'organization_token'} = $self->{api_client}->to_query_value($args{'organization_token'});
    }# query params
    if ( exists $args{'include_public'}) {
        $query_params->{'include_public'} = $self->{api_client}->to_query_value($args{'include_public'});
    }
    
    # path params
    if ( exists $args{'organization_id'}) {
        my $_base_variable = "{" . "organizationId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'organization_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }# path params
    if ( exists $args{'user_id'}) {
        my $_base_variable = "{" . "userId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }# path params
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[Correlation]', $response);
    return $_response_object;
    
}
#
# v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get
#
# Search user correlations for a given cause
# 
# @param int $organization_id Organization ID (required)
# @param int $user_id User id (required)
# @param string $variable_name Cause variable name (required)
# @param string $organization_token Organization access token (required)
# @param string $include_public Include bublic correlations, Can be \&quot;1\&quot; or empty. (optional)
# @return ARRAY[CommonResponse]
#
sub v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get {
    my ($self, %args) = @_;

    
    # verify the required parameter 'organization_id' is set
    unless (exists $args{'organization_id'}) {
      croak("Missing the required parameter 'organization_id' when calling v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get");
    }
    
    # verify the required parameter 'user_id' is set
    unless (exists $args{'user_id'}) {
      croak("Missing the required parameter 'user_id' when calling v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get");
    }
    
    # verify the required parameter 'variable_name' is set
    unless (exists $args{'variable_name'}) {
      croak("Missing the required parameter 'variable_name' when calling v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get");
    }
    
    # verify the required parameter 'organization_token' is set
    unless (exists $args{'organization_token'}) {
      croak("Missing the required parameter 'organization_token' when calling v1_organizations_organization_id_users_user_id_variables_variable_name_effects_get");
    }
    

    # parse inputs
    my $_resource_path = '/v1/organizations/{organizationId}/users/{userId}/variables/{variableName}/effects';
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
    if ( exists $args{'organization_token'}) {
        $query_params->{'organization_token'} = $self->{api_client}->to_query_value($args{'organization_token'});
    }# query params
    if ( exists $args{'include_public'}) {
        $query_params->{'include_public'} = $self->{api_client}->to_query_value($args{'include_public'});
    }
    
    # path params
    if ( exists $args{'organization_id'}) {
        my $_base_variable = "{" . "organizationId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'organization_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }# path params
    if ( exists $args{'user_id'}) {
        my $_base_variable = "{" . "userId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }# path params
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[CommonResponse]', $response);
    return $_response_object;
    
}
#
# v1_public_correlations_search_search_get
#
# Get average correlations for variables containing search term
# 
# @param string $search Name of the variable that you want to know the causes or effects of. (required)
# @param string $effect_or_cause Specifies whether to return the effects or causes of the searched variable. (required)
# @return ARRAY[Correlation]
#
sub v1_public_correlations_search_search_get {
    my ($self, %args) = @_;

    
    # verify the required parameter 'search' is set
    unless (exists $args{'search'}) {
      croak("Missing the required parameter 'search' when calling v1_public_correlations_search_search_get");
    }
    
    # verify the required parameter 'effect_or_cause' is set
    unless (exists $args{'effect_or_cause'}) {
      croak("Missing the required parameter 'effect_or_cause' when calling v1_public_correlations_search_search_get");
    }
    

    # parse inputs
    my $_resource_path = '/v1/public/correlations/search/{search}';
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[Correlation]', $response);
    return $_response_object;
    
}
#
# v1_variables_variable_name_causes_get
#
# Search user correlations for a given effect
# 
# @param string $variable_name Effect variable name (required)
# @return ARRAY[Correlation]
#
sub v1_variables_variable_name_causes_get {
    my ($self, %args) = @_;

    
    # verify the required parameter 'variable_name' is set
    unless (exists $args{'variable_name'}) {
      croak("Missing the required parameter 'variable_name' when calling v1_variables_variable_name_causes_get");
    }
    

    # parse inputs
    my $_resource_path = '/v1/variables/{variableName}/causes';
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[Correlation]', $response);
    return $_response_object;
    
}
#
# v1_variables_variable_name_effects_get
#
# Search user correlations for a given cause
# 
# @param string $variable_name Cause variable name (required)
# @return ARRAY[Correlation]
#
sub v1_variables_variable_name_effects_get {
    my ($self, %args) = @_;

    
    # verify the required parameter 'variable_name' is set
    unless (exists $args{'variable_name'}) {
      croak("Missing the required parameter 'variable_name' when calling v1_variables_variable_name_effects_get");
    }
    

    # parse inputs
    my $_resource_path = '/v1/variables/{variableName}/effects';
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[Correlation]', $response);
    return $_response_object;
    
}
#
# v1_variables_variable_name_public_causes_get
#
# Search public correlations for a given effect
# 
# @param string $variable_name Effect variable name (required)
# @return ARRAY[Correlation]
#
sub v1_variables_variable_name_public_causes_get {
    my ($self, %args) = @_;

    
    # verify the required parameter 'variable_name' is set
    unless (exists $args{'variable_name'}) {
      croak("Missing the required parameter 'variable_name' when calling v1_variables_variable_name_public_causes_get");
    }
    

    # parse inputs
    my $_resource_path = '/v1/variables/{variableName}/public/causes';
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[Correlation]', $response);
    return $_response_object;
    
}
#
# v1_variables_variable_name_public_effects_get
#
# Search public correlations for a given cause
# 
# @param string $variable_name Cause variable name (required)
# @return ARRAY[Correlation]
#
sub v1_variables_variable_name_public_effects_get {
    my ($self, %args) = @_;

    
    # verify the required parameter 'variable_name' is set
    unless (exists $args{'variable_name'}) {
      croak("Missing the required parameter 'variable_name' when calling v1_variables_variable_name_public_effects_get");
    }
    

    # parse inputs
    my $_resource_path = '/v1/variables/{variableName}/public/effects';
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[Correlation]', $response);
    return $_response_object;
    
}
#
# v1_votes_post
#
# Post or update vote
# 
# @param string $cause Cause variable name (required)
# @param string $effect Effect variable name (required)
# @param number $correlation Correlation value (required)
# @param boolean $vote Vote: 0 (for implausible) or 1 (for plausible) (optional)
# @return CommonResponse
#
sub v1_votes_post {
    my ($self, %args) = @_;

    
    # verify the required parameter 'cause' is set
    unless (exists $args{'cause'}) {
      croak("Missing the required parameter 'cause' when calling v1_votes_post");
    }
    
    # verify the required parameter 'effect' is set
    unless (exists $args{'effect'}) {
      croak("Missing the required parameter 'effect' when calling v1_votes_post");
    }
    
    # verify the required parameter 'correlation' is set
    unless (exists $args{'correlation'}) {
      croak("Missing the required parameter 'correlation' when calling v1_votes_post");
    }
    

    # parse inputs
    my $_resource_path = '/v1/votes';
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
        $query_params->{'cause'} = $self->{api_client}->to_query_value($args{'cause'});
    }# query params
    if ( exists $args{'effect'}) {
        $query_params->{'effect'} = $self->{api_client}->to_query_value($args{'effect'});
    }# query params
    if ( exists $args{'correlation'}) {
        $query_params->{'correlation'} = $self->{api_client}->to_query_value($args{'correlation'});
    }# query params
    if ( exists $args{'vote'}) {
        $query_params->{'vote'} = $self->{api_client}->to_query_value($args{'vote'});
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
    my $_response_object = $self->{api_client}->deserialize('CommonResponse', $response);
    return $_response_object;
    
}
#
# v1_votes_delete_post
#
# Delete vote
# 
# @param string $cause Cause variable name (required)
# @param string $effect Effect variable name (required)
# @return CommonResponse
#
sub v1_votes_delete_post {
    my ($self, %args) = @_;

    
    # verify the required parameter 'cause' is set
    unless (exists $args{'cause'}) {
      croak("Missing the required parameter 'cause' when calling v1_votes_delete_post");
    }
    
    # verify the required parameter 'effect' is set
    unless (exists $args{'effect'}) {
      croak("Missing the required parameter 'effect' when calling v1_votes_delete_post");
    }
    

    # parse inputs
    my $_resource_path = '/v1/votes/delete';
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
        $query_params->{'cause'} = $self->{api_client}->to_query_value($args{'cause'});
    }# query params
    if ( exists $args{'effect'}) {
        $query_params->{'effect'} = $self->{api_client}->to_query_value($args{'effect'});
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
    my $_response_object = $self->{api_client}->deserialize('CommonResponse', $response);
    return $_response_object;
    
}


1;
