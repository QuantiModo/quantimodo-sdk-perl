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
# NOTE: This class is auto generated by Swagger Codegen
# Please update the test cases below to test the API endpoints.
# Ref: https://github.com/swagger-api/swagger-codegen
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::SwaggerClient::VariablesApi');

my $api = WWW::SwaggerClient::VariablesApi->new();
isa_ok($api, 'WWW::SwaggerClient::VariablesApi');

#
# v1_public_variables_get test
#
{
    my $result = $api->v1_public_variables_get();
}

#
# v1_public_variables_search_search_get test
#
{
    my $search = undef; # replace NULL with a proper value
    my $access_token = undef; # replace NULL with a proper value
    my $category_name = undef; # replace NULL with a proper value
    my $source = undef; # replace NULL with a proper value
    my $effect_or_cause = undef; # replace NULL with a proper value
    my $public_effect_or_cause = undef; # replace NULL with a proper value
    my $limit = undef; # replace NULL with a proper value
    my $offset = undef; # replace NULL with a proper value
    my $sort = undef; # replace NULL with a proper value
    my $result = $api->v1_public_variables_search_search_get(search => $search, access_token => $access_token, category_name => $category_name, source => $source, effect_or_cause => $effect_or_cause, public_effect_or_cause => $public_effect_or_cause, limit => $limit, offset => $offset, sort => $sort);
}

#
# v1_user_variables_post test
#
{
    my $user_variables = undef; # replace NULL with a proper value
    my $result = $api->v1_user_variables_post(user_variables => $user_variables);
}

#
# v1_variable_categories_get test
#
{
    my $result = $api->v1_variable_categories_get();
}

#
# v1_variables_get test
#
{
    my $access_token = undef; # replace NULL with a proper value
    my $id = undef; # replace NULL with a proper value
    my $user_id = undef; # replace NULL with a proper value
    my $category = undef; # replace NULL with a proper value
    my $name = undef; # replace NULL with a proper value
    my $last_updated = undef; # replace NULL with a proper value
    my $source = undef; # replace NULL with a proper value
    my $latest_measurement_time = undef; # replace NULL with a proper value
    my $number_of_measurements = undef; # replace NULL with a proper value
    my $last_source = undef; # replace NULL with a proper value
    my $limit = undef; # replace NULL with a proper value
    my $offset = undef; # replace NULL with a proper value
    my $sort = undef; # replace NULL with a proper value
    my $result = $api->v1_variables_get(access_token => $access_token, id => $id, user_id => $user_id, category => $category, name => $name, last_updated => $last_updated, source => $source, latest_measurement_time => $latest_measurement_time, number_of_measurements => $number_of_measurements, last_source => $last_source, limit => $limit, offset => $offset, sort => $sort);
}

#
# v1_variables_post test
#
{
    my $body = undef; # replace NULL with a proper value
    my $access_token = undef; # replace NULL with a proper value
    my $result = $api->v1_variables_post(body => $body, access_token => $access_token);
}

#
# v1_variables_search_search_get test
#
{
    my $search = undef; # replace NULL with a proper value
    my $access_token = undef; # replace NULL with a proper value
    my $category_name = undef; # replace NULL with a proper value
    my $include_public = undef; # replace NULL with a proper value
    my $manual_tracking = undef; # replace NULL with a proper value
    my $source = undef; # replace NULL with a proper value
    my $effect_or_cause = undef; # replace NULL with a proper value
    my $public_effect_or_cause = undef; # replace NULL with a proper value
    my $limit = undef; # replace NULL with a proper value
    my $offset = undef; # replace NULL with a proper value
    my $result = $api->v1_variables_search_search_get(search => $search, access_token => $access_token, category_name => $category_name, include_public => $include_public, manual_tracking => $manual_tracking, source => $source, effect_or_cause => $effect_or_cause, public_effect_or_cause => $public_effect_or_cause, limit => $limit, offset => $offset);
}

#
# v1_variables_variable_name_get test
#
{
    my $variable_name = undef; # replace NULL with a proper value
    my $access_token = undef; # replace NULL with a proper value
    my $result = $api->v1_variables_variable_name_get(variable_name => $variable_name, access_token => $access_token);
}


1;
