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
package WWW::SwaggerClient::UserApi;

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
  user_me_get 
  v1_organizations_organization_id_users_post 
  
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
    # user_me_get
    #
    # Get all available units for variableGet authenticated user
    # 
    # @return void
    #
    sub user_me_get {
      my ($self, %args) = @_;

      

      # parse inputs
      my $_resource_path = '/user/me';
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
    # v1_organizations_organization_id_users_post
    #
    # Get user tokens for existing users, create new users
    # 
    # @param int $organization_id Organization ID (required)
    # @param UserTokenRequest $body Provides organization token and user ID (required)
    # @return UserTokenSuccessfulResponse
    #
    sub v1_organizations_organization_id_users_post {
      my ($self, %args) = @_;

      
      # verify the required parameter 'organization_id' is set
      unless (exists $args{'organization_id'}) {
        croak("Missing the required parameter 'organization_id' when calling v1_organizations_organization_id_users_post");
      }
      
      # verify the required parameter 'body' is set
      unless (exists $args{'body'}) {
        croak("Missing the required parameter 'body' when calling v1_organizations_organization_id_users_post");
      }
      

      # parse inputs
      my $_resource_path = '/v1/organizations/{organizationId}/users';
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

      
      
       # path params
      if ( exists $args{'organization_id'}) {
        my $_base_variable = "{" . "organizationId" . "}";
        my $_base_value = WWW::SwaggerClient::APIClient::to_path_value($args{'organization_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
      }
      
      my $_body_data;
       # body params
      if ( exists $args{'body'}) {
        $_body_data = $args{'body'};
      }

      # for HTTP post (form)
      #$_body_data = $_body ? undef : $form_params;

      # make the API Call
      my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                             $query_params, $form_params,
                                             $header_params, $_body_data);
      if (!$response) {
        return;
      }
  		my $_response_object = $self->{api_client}->deserialize('UserTokenSuccessfulResponse', $response);
  		return $_response_object;
      
  }
  


1;
