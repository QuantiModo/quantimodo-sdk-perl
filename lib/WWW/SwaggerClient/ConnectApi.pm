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
package WWW::SwaggerClient::ConnectApi;

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
  v1_connect/js_get 
  v1_connect_mobile_get 
  
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
    # v1_connect/js_get
    #
    # Get embeddable connect javascript
    # 
    # @param string $t User token (required)
    # @return void
    #
    sub v1_connect/js_get {
      my ($self, %args) = @_;

      
      # verify the required parameter 't' is set
      unless (exists $args{'t'}) {
        croak("Missing the required parameter 't' when calling v1_connect/js_get");
      }
      

      # parse inputs
      my $_resource_path = '/v1/connect.js';
      $_resource_path =~ s/{format}/json/; # default format to json

      my $_method = 'GET';
      my $query_params = {};
      my $header_params = {};
      my $form_params = {};

      # 'Accept' and 'Content-Type' header
      my $_header_accept = $self->{api_client}->select_header_accept('application/x-javascript');
      if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
      }
      $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

       # query params
      if ( exists $args{'t'}) {
        $query_params->{'t'} = WWW::::APIClient::to_query_value($args{'t'});
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
    # v1_connect_mobile_get
    #
    # Mobile connect page
    # 
    # @param string $t User token (required)
    # @return void
    #
    sub v1_connect_mobile_get {
      my ($self, %args) = @_;

      
      # verify the required parameter 't' is set
      unless (exists $args{'t'}) {
        croak("Missing the required parameter 't' when calling v1_connect_mobile_get");
      }
      

      # parse inputs
      my $_resource_path = '/v1/connect/mobile';
      $_resource_path =~ s/{format}/json/; # default format to json

      my $_method = 'GET';
      my $query_params = {};
      my $header_params = {};
      my $form_params = {};

      # 'Accept' and 'Content-Type' header
      my $_header_accept = $self->{api_client}->select_header_accept('text/html');
      if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
      }
      $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

       # query params
      if ( exists $args{'t'}) {
        $query_params->{'t'} = WWW::::APIClient::to_query_value($args{'t'});
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