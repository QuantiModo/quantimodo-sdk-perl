=begin comment

QuantiModo

Welcome to QuantiModo API! QuantiModo makes it easy to retrieve normalized user data from a wide array of devices and applications. [Learn about QuantiModo](https://quantimo.do) or contact us at <api@quantimo.do>.         Before you get started, you will need to: * Sign in/Sign up, and add some data at [https://app.quantimo.do/api/v2/account/connectors](https://app.quantimo.do/api/v2/account/connectors) to try out the API for yourself * Create an app to get your client id and secret at [https://app.quantimo.do/api/v2/apps](https://app.quantimo.do/api/v2/apps) * As long as you're signed in, it will use your browser's cookie for authentication.  However, client applications must use OAuth2 tokens to access the API.     ## Application Endpoints These endpoints give you access to all authorized users' data for that application. ### Getting Application Token Make a `POST` request to `/api/v2/oauth/access_token`         * `grant_type` Must be `client_credentials`.         * `clientId` Your application's clientId.         * `client_secret` Your application's client_secret.         * `redirect_uri` Your application's redirect url.                ## Example Queries ### Query Options The standard query options for QuantiModo API are as described in the table below. These are the available query options in QuantiModo API: <table>            <thead>                <tr>                    <th>Parameter</th>                    <th>Description</th>                </tr>            </thead>            <tbody>                <tr>                    <td>limit</td>                    <td>The LIMIT is used to limit the number of results returned.  So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.</td>                </tr>                <tr>                    <td>offset</td>                    <td>Suppose you wanted to show results 11-20. You'd set the    offset to 10 and the limit to 10.</td>                </tr>                <tr>                    <td>sort</td>                    <td>Sort by given field. If the field is prefixed with '-', it    will sort in descending order.</td>                </tr>            </tbody>        </table>         ### Pagination Conventions Since the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters,         `/v2/variables?limit=20&offset=60`         Generally, you'll be retrieving new or updated user data. To avoid unnecessary API calls, you'll want to store your last refresh time locally.  Initially, it should be set to 0. Then whenever you make a request to get new data, you should limit the returned results to those updated since your last refresh by appending append         `?lastUpdated=(ge)&quot2013-01-D01T01:01:01&quot`         to your request.         Also for better pagination, you can get link to the records of first, last, next and previous page from response headers: * `Total-Count` - Total number of results for given query * `Link-First` - Link to get first page records * `Link-Last` - Link to get last page records * `Link-Prev` - Link to get previous records set * `Link-Next` - Link to get next records set         Remember, response header will be only sent when the record set is available. e.g. You will not get a ```Link-Last``` & ```Link-Next``` when you query for the last page.         ### Filter operators support API supports the following operators with filter parameters: <br> **Comparison operators**         Comparison operators allow you to limit results to those greater than, less than, or equal to a specified value for a specified attribute. These operators can be used with strings, numbers, and dates. The following comparison operators are available: * `gt` for `greater than` comparison * `ge` for `greater than or equal` comparison * `lt` for `less than` comparison * `le` for `less than or equal` comparison         They are included in queries using the following format:         `(<operator>)<value>`         For example, in order to filter value which is greater than 21, the following query parameter should be used:         `?value=(gt)21` <br><br> **Equals/In Operators**         It also allows filtering by the exact value of an attribute or by a set of values, depending on the type of value passed as a query parameter. If the value contains commas, the parameter is split on commas and used as array input for `IN` filtering, otherwise the exact match is applied. In order to only show records which have the value 42, the following query should be used:         `?value=42`         In order to filter records which have value 42 or 43, the following query should be used:         `?value=42,43` <br><br> **Like operators**         Like operators allow filtering using `LIKE` query. This operator is triggered if exact match operator is used, but value contains `%` sign as the first or last character. In order to filter records which category that start with `Food`, the following query should be used:         `?category=Food%` <br><br> **Negation operator**         It is possible to get negated results of a query by prefixed the operator with `!`. Some examples:         `//filter records except those with value are not 42 or 43`<br> `?value=!42,43`         `//filter records with value not greater than 21`<br> `?value=!(ge)21` <br><br> **Multiple constraints for single attribute**         It is possible to apply multiple constraints by providing an array of query filters:         Filter all records which value is greater than 20.2 and less than 20.3<br> `?value[]=(gt)20.2&value[]=(lt)20.3`         Filter all records which value is greater than 20.2 and less than 20.3 but not 20.2778<br> `?value[]=(gt)20.2&value[]=(lt)20.3&value[]=!20.2778`<br><br> 

OpenAPI spec version: 2.0.6

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package WWW::SwaggerClient::Object::TrackingReminder;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use base ("Class::Accessor", "Class::Data::Inheritable");


#
#
#
# NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
# REF: https://github.com/swagger-api/swagger-codegen
#

=begin comment

QuantiModo

Welcome to QuantiModo API! QuantiModo makes it easy to retrieve normalized user data from a wide array of devices and applications. [Learn about QuantiModo](https://quantimo.do) or contact us at <api@quantimo.do>.         Before you get started, you will need to: * Sign in/Sign up, and add some data at [https://app.quantimo.do/api/v2/account/connectors](https://app.quantimo.do/api/v2/account/connectors) to try out the API for yourself * Create an app to get your client id and secret at [https://app.quantimo.do/api/v2/apps](https://app.quantimo.do/api/v2/apps) * As long as you're signed in, it will use your browser's cookie for authentication.  However, client applications must use OAuth2 tokens to access the API.     ## Application Endpoints These endpoints give you access to all authorized users' data for that application. ### Getting Application Token Make a `POST` request to `/api/v2/oauth/access_token`         * `grant_type` Must be `client_credentials`.         * `clientId` Your application's clientId.         * `client_secret` Your application's client_secret.         * `redirect_uri` Your application's redirect url.                ## Example Queries ### Query Options The standard query options for QuantiModo API are as described in the table below. These are the available query options in QuantiModo API: <table>            <thead>                <tr>                    <th>Parameter</th>                    <th>Description</th>                </tr>            </thead>            <tbody>                <tr>                    <td>limit</td>                    <td>The LIMIT is used to limit the number of results returned.  So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.</td>                </tr>                <tr>                    <td>offset</td>                    <td>Suppose you wanted to show results 11-20. You'd set the    offset to 10 and the limit to 10.</td>                </tr>                <tr>                    <td>sort</td>                    <td>Sort by given field. If the field is prefixed with '-', it    will sort in descending order.</td>                </tr>            </tbody>        </table>         ### Pagination Conventions Since the maximum limit is 200 records, to get more than that you'll have to make multiple API calls and page through the results. To retrieve all the data, you can iterate through data by using the `limit` and `offset` query parameters.For example, if you want to retrieve data from 61-80 then you can use a query with the following parameters,         `/v2/variables?limit=20&offset=60`         Generally, you'll be retrieving new or updated user data. To avoid unnecessary API calls, you'll want to store your last refresh time locally.  Initially, it should be set to 0. Then whenever you make a request to get new data, you should limit the returned results to those updated since your last refresh by appending append         `?lastUpdated=(ge)&quot2013-01-D01T01:01:01&quot`         to your request.         Also for better pagination, you can get link to the records of first, last, next and previous page from response headers: * `Total-Count` - Total number of results for given query * `Link-First` - Link to get first page records * `Link-Last` - Link to get last page records * `Link-Prev` - Link to get previous records set * `Link-Next` - Link to get next records set         Remember, response header will be only sent when the record set is available. e.g. You will not get a ```Link-Last``` & ```Link-Next``` when you query for the last page.         ### Filter operators support API supports the following operators with filter parameters: <br> **Comparison operators**         Comparison operators allow you to limit results to those greater than, less than, or equal to a specified value for a specified attribute. These operators can be used with strings, numbers, and dates. The following comparison operators are available: * `gt` for `greater than` comparison * `ge` for `greater than or equal` comparison * `lt` for `less than` comparison * `le` for `less than or equal` comparison         They are included in queries using the following format:         `(<operator>)<value>`         For example, in order to filter value which is greater than 21, the following query parameter should be used:         `?value=(gt)21` <br><br> **Equals/In Operators**         It also allows filtering by the exact value of an attribute or by a set of values, depending on the type of value passed as a query parameter. If the value contains commas, the parameter is split on commas and used as array input for `IN` filtering, otherwise the exact match is applied. In order to only show records which have the value 42, the following query should be used:         `?value=42`         In order to filter records which have value 42 or 43, the following query should be used:         `?value=42,43` <br><br> **Like operators**         Like operators allow filtering using `LIKE` query. This operator is triggered if exact match operator is used, but value contains `%` sign as the first or last character. In order to filter records which category that start with `Food`, the following query should be used:         `?category=Food%` <br><br> **Negation operator**         It is possible to get negated results of a query by prefixed the operator with `!`. Some examples:         `//filter records except those with value are not 42 or 43`<br> `?value=!42,43`         `//filter records with value not greater than 21`<br> `?value=!(ge)21` <br><br> **Multiple constraints for single attribute**         It is possible to apply multiple constraints by providing an array of query filters:         Filter all records which value is greater than 20.2 and less than 20.3<br> `?value[]=(gt)20.2&value[]=(lt)20.3`         Filter all records which value is greater than 20.2 and less than 20.3 but not 20.2778<br> `?value[]=(gt)20.2&value[]=(lt)20.3&value[]=!20.2778`<br><br> 

OpenAPI spec version: 2.0.6

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('swagger_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {}); 
__PACKAGE__->mk_classdata('class_documentation' => {});

# new object
sub new { 
    my ($class, %args) = @_; 

	my $self = bless {}, $class;
	
	foreach my $attribute (keys %{$class->attribute_map}) {
		my $args_key = $class->attribute_map->{$attribute};
		$self->$attribute( $args{ $args_key } );
	}
	
	return $self;
}  

# return perl hash
sub to_hash {
    return decode_json(JSON->new->convert_blessed->encode( shift ));
}

# used by JSON for serialization
sub TO_JSON { 
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }
    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use swagger_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->swagger_types} ) {
    	my $_json_attribute = $self->attribute_map->{$_key}; 
        if ($_type =~ /^array\[/i) { # array
            my $_subclass = substr($_type, 6, -1);
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
        	$log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }
  
    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);
        
    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "WWW::SwaggerClient::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}



__PACKAGE__->class_documentation({description => '',
                                  class => 'TrackingReminder',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'id' => {
    	datatype => 'int',
    	base_name => 'id',
    	description => 'id',
    	format => '',
    	read_only => '',
    		},
    'client_id' => {
    	datatype => 'string',
    	base_name => 'clientId',
    	description => 'clientId',
    	format => '',
    	read_only => '',
    		},
    'user_id' => {
    	datatype => 'int',
    	base_name => 'userId',
    	description => 'ID of User',
    	format => '',
    	read_only => '',
    		},
    'variable_id' => {
    	datatype => 'int',
    	base_name => 'variableId',
    	description => 'Id for the variable to be tracked',
    	format => '',
    	read_only => '',
    		},
    'default_value' => {
    	datatype => 'double',
    	base_name => 'defaultValue',
    	description => 'Default value to use for the measurement when tracking',
    	format => '',
    	read_only => '',
    		},
    'reminder_start_time' => {
    	datatype => 'string',
    	base_name => 'reminderStartTime',
    	description => 'Earliest time of day at which reminders should appear in UTC HH:MM:SS format',
    	format => '',
    	read_only => '',
    		},
    'reminder_end_time' => {
    	datatype => 'string',
    	base_name => 'reminderEndTime',
    	description => 'Latest time of day at which reminders should appear in UTC HH:MM:SS format',
    	format => '',
    	read_only => '',
    		},
    'reminder_sound' => {
    	datatype => 'string',
    	base_name => 'reminderSound',
    	description => 'String identifier for the sound to accompany the reminder',
    	format => '',
    	read_only => '',
    		},
    'reminder_frequency' => {
    	datatype => 'int',
    	base_name => 'reminderFrequency',
    	description => 'Number of seconds between one reminder and the next',
    	format => '',
    	read_only => '',
    		},
    'pop_up' => {
    	datatype => 'boolean',
    	base_name => 'popUp',
    	description => 'True if the reminders should appear as a popup notification',
    	format => '',
    	read_only => '',
    		},
    'sms' => {
    	datatype => 'boolean',
    	base_name => 'sms',
    	description => 'True if the reminders should be delivered via SMS',
    	format => '',
    	read_only => '',
    		},
    'email' => {
    	datatype => 'boolean',
    	base_name => 'email',
    	description => 'True if the reminders should be delivered via email',
    	format => '',
    	read_only => '',
    		},
    'notification_bar' => {
    	datatype => 'boolean',
    	base_name => 'notificationBar',
    	description => 'True if the reminders should appear in the notification bar',
    	format => '',
    	read_only => '',
    		},
    'last_reminded' => {
    	datatype => 'DateTime',
    	base_name => 'lastReminded',
    	description => 'ISO 8601 timestamp for the last time a reminder was sent',
    	format => '',
    	read_only => '',
    		},
    'last_tracked' => {
    	datatype => 'DateTime',
    	base_name => 'lastTracked',
    	description => 'ISO 8601 timestamp for the last time a measurement was received for this user and variable',
    	format => '',
    	read_only => '',
    		},
    'first_daily_reminder_time' => {
    	datatype => 'string',
    	base_name => 'firstDailyReminderTime',
    	description => 'Specific first time of day that the user should be reminded to track in UTC HH:MM:SS format',
    	format => '',
    	read_only => '',
    		},
    'second_daily_reminder_time' => {
    	datatype => 'string',
    	base_name => 'secondDailyReminderTime',
    	description => 'Specific second time of day that the user should be reminded to track in UTC HH:MM:SS format',
    	format => '',
    	read_only => '',
    		},
    'third_daily_reminder_time' => {
    	datatype => 'string',
    	base_name => 'thirdDailyReminderTime',
    	description => 'Specific third time of day that the user should be reminded to track in UTC HH:MM:SS format',
    	format => '',
    	read_only => '',
    		},
    'start_tracking_date' => {
    	datatype => 'string',
    	base_name => 'startTrackingDate',
    	description => 'Earliest date on which the user should be reminded to track in YYYY-MM-DD format',
    	format => '',
    	read_only => '',
    		},
    'stop_tracking_date' => {
    	datatype => 'string',
    	base_name => 'stopTrackingDate',
    	description => 'Latest date on which the user should be reminded to track in YYYY-MM-DD format',
    	format => '',
    	read_only => '',
    		},
    'updated_at' => {
    	datatype => 'DateTime',
    	base_name => 'updatedAt',
    	description => 'When the record in the database was last updated. Use ISO 8601 datetime format. Time zone should be UTC and not local.',
    	format => '',
    	read_only => '',
    		},
    'variable_name' => {
    	datatype => 'string',
    	base_name => 'variableName',
    	description => 'Name of the variable to be used when sending measurements',
    	format => '',
    	read_only => '',
    		},
    'variable_category_name' => {
    	datatype => 'string',
    	base_name => 'variableCategoryName',
    	description => 'Name of the variable category to be used when sending measurements',
    	format => '',
    	read_only => '',
    		},
    'abbreviated_unit_name' => {
    	datatype => 'string',
    	base_name => 'abbreviatedUnitName',
    	description => 'Abbreviated name of the unit to be used when sending measurements',
    	format => '',
    	read_only => '',
    		},
    'combination_operation' => {
    	datatype => 'string',
    	base_name => 'combinationOperation',
    	description => 'The way multiple measurements are aggregated over time',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'id' => 'int',
    'client_id' => 'string',
    'user_id' => 'int',
    'variable_id' => 'int',
    'default_value' => 'double',
    'reminder_start_time' => 'string',
    'reminder_end_time' => 'string',
    'reminder_sound' => 'string',
    'reminder_frequency' => 'int',
    'pop_up' => 'boolean',
    'sms' => 'boolean',
    'email' => 'boolean',
    'notification_bar' => 'boolean',
    'last_reminded' => 'DateTime',
    'last_tracked' => 'DateTime',
    'first_daily_reminder_time' => 'string',
    'second_daily_reminder_time' => 'string',
    'third_daily_reminder_time' => 'string',
    'start_tracking_date' => 'string',
    'stop_tracking_date' => 'string',
    'updated_at' => 'DateTime',
    'variable_name' => 'string',
    'variable_category_name' => 'string',
    'abbreviated_unit_name' => 'string',
    'combination_operation' => 'string'
} );

__PACKAGE__->attribute_map( {
    'id' => 'id',
    'client_id' => 'clientId',
    'user_id' => 'userId',
    'variable_id' => 'variableId',
    'default_value' => 'defaultValue',
    'reminder_start_time' => 'reminderStartTime',
    'reminder_end_time' => 'reminderEndTime',
    'reminder_sound' => 'reminderSound',
    'reminder_frequency' => 'reminderFrequency',
    'pop_up' => 'popUp',
    'sms' => 'sms',
    'email' => 'email',
    'notification_bar' => 'notificationBar',
    'last_reminded' => 'lastReminded',
    'last_tracked' => 'lastTracked',
    'first_daily_reminder_time' => 'firstDailyReminderTime',
    'second_daily_reminder_time' => 'secondDailyReminderTime',
    'third_daily_reminder_time' => 'thirdDailyReminderTime',
    'start_tracking_date' => 'startTrackingDate',
    'stop_tracking_date' => 'stopTrackingDate',
    'updated_at' => 'updatedAt',
    'variable_name' => 'variableName',
    'variable_category_name' => 'variableCategoryName',
    'abbreviated_unit_name' => 'abbreviatedUnitName',
    'combination_operation' => 'combinationOperation'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
