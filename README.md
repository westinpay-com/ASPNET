<img class="w-75" src="https://i.ibb.co/2KbqLG2/Westin-Pay.png" alt="image">
# WestinPay Payment Gateway Solutions Developer API Documentation

Welcome to the WestinPay Payment Gateway Solutions Developer API Documentation. This comprehensive guide will empower you to seamlessly integrate our advanced payment gateway into your website, enhancing your customers’ payment experience and enabling efficient transaction processing. The WestinPay Developer API is designed for developers and entrepreneurs who seek simplicity, security, and reliability in their payment processing solutions.

## Introduction

The WestinPay Developer API allows you to seamlessly integrate WestinPay’s Payment Gateway Solutions into your website, enabling secure and efficient debit and credit card transactions. With our API, you can initiate payments, check payment statuses, and even process refunds, all while ensuring a smooth and streamlined payment experience for your customers.

## Supported Currencies

This section describes the currencies supported by WestinPay:

| Currency Name        | Currency Symbol | Currency Code |
|----------------------|-----------------|---------------|
| United States Dollar | $               | USD           |
| GBP                  | £               | GBP           |
| Euro                 | €               | EUR           |
| Canadian dollar      | CAD             | CAD           |
| Swiss franc          | CHF             | CHF           |
| Australian dollar    | A$              | AUD           |
| Hong Kong dollar     | HK$             | HKD           |
| Indian rupee         | ₹               | INR           |
| New Zealand dollar   | NZ$             | NZD           |
| Russian ruble        | ₽               | RUB           |
| Romanian leu         | L               | RON           |
| Bulgarian lev        | BGN             | BGN           |
| Swedish krona        | kr              | SEK           |
| Turkish lira         | ₺               | TRY           |
| Brazilian real       | R$              | BRL           |
| Polonya zlotisi      | zł              | PLN           |
| South Africa ZAR     | R               | ZAR           |
| Bitcoin              | ₿               | BTC           |
| ETHEREUM             | Ξ               | ETH           |
| DOGECOİN             | Ð               | DOGE          |
| AZN MANAT            | ₼               | AZN           |
| TRX                  | TRX             | TRX           |
| USDT.BEP20           | ₮               | USDT          |
| Monero XMR           | XMR             | XMR           |

## Get The API Key

This section describes how you can get your API key:

1. Login to your WestinPay merchant account. If you don't have any, [click here](https://westinpay.com/register).
2. Find the API Key menu in your dashboard sidebar and click the menu.
3. Your API keys, including the Public key and Secret key, can be found there. Use these keys to initiate API requests. Remember not to share these keys with anyone.
4. You can generate new API keys anytime by clicking the "Generate API Key" button.

## Initiate Payment

This section describes the process of initiating the payment:

To initiate the payment, follow the example code below and be careful with the parameters. You will need to make a request to the following API endpoints:

- Live Endpoint: `https://westinpay.com/payment/initiate`
- Test Endpoint: `https://westinpay.com/sandbox/payment/initiate`
- Test Mode Email: `test_mode@mail.com`
- Test Mode Verification Code: `222666`

**Request Method:** POST

Request to the endpoint with the following parameters:

| Param Name     | Param Type | Description                                       |
|----------------|------------|---------------------------------------------------|
| public_key     | string (50)| Required. Your Public API key.                    |
| identifier     | string (20)| Required. Identifier for identifying payment at your end.|
| currency       | string (4) | Required. Currency Code, must be in Upper Case.  |
| amount         | decimal    | Required. Payment amount.                         |
| details        | string (100)| Required. Details of your payment or transaction.|
| ipn_url        | string     | Required. The URL of instant payment notification.|
| success_url    | string     | Required. Payment success redirect URL.           |
| cancel_url     | string     | Required. Payment cancel redirect URL.            |
| site_logo      | string/url | Required. Your business site logo.                |
| checkout_theme | string     | Optional. Checkout form theme dark/light. Default theme is light.|
| customer_name  | string (30)| Required. Customer name.                          |
| customer_email | string (30)| Required. Customer valid email.                   |

## Validate The Payment and IPN

This section describes the process to get your instant payment notification.

To validate the payment, follow the example code below and be careful with the parameters. You will need to make a request to your business application IPN URL.

**Request Method:** POST

You will receive the following parameters:

| Param Name | Description                                    |
|------------|------------------------------------------------|
| status     | Payment success status.                       |
| identifier | Identifier for identifying payment at your end.|
| signature  | A hash signature to verify your payment.       |
| data       | Data containing basic information like charges, amount, currency, payment transaction ID, etc. |


