require 'oauth2'
require 'json'
require 'uri'

# remplacez ces valeurs par celles de moi application shopify
SHOPIFY_API_KEY = 
SHOPIFY_API_SECRET =
SHOPIFY_REDIRECT_URI =
SHOPIFY_SCOPE = 'read_products,write _products'
SHOPIFY_SHOP_NAME = 

# creer un client OAuth2
client = OAuth2::Client.new(SHOPIFY_API_KEY, SHOPIFY_API_SECRET, site: , authorize_url: , token_url:)

# URL pour l'authentification
auth_url = client.auth_code.authorize_url(redirect_uri: SHOPIFY_REDIRECT_URI, scope: SHOPIFY_SCOPE)

puts ""

print "Enter the code for URL redirect"
code = gets.strip

# echanger le code pour obtenir un token d'access
token = client.auth_code.get_token(code, redirect_uri: SHOPIFY_REDIRECT_URI)

puts "token"

response = token.get()

puts 