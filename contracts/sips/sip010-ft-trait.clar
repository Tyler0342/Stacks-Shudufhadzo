;; SIP010 is not ratified so you will see differences, in particular with the balance function.
;; Variants I have encounted include (get-balance ...), (get-balance-of ...), (balance-of ...).
;; Even the reference deployment mentioned in the SIP does not conform to its own standard.
;; As of https://github.com/stacksgov/sips/blob/f2021940abfebbb1ebdc3b297afb038b01042db3/sips/sip-010/sip-010-fungible-token-standard.md
;; This file is a copy of the reference deployment at SP3FBR2AGK5H9QBDH3EEN6DF8EK8JY7RX8QJ5SVTE.sip-010-trait-ft-standard

(define-trait ft-trait
	(
		;; Transfer from the caller to a new principal
		(transfer (uint principal principal) (response bool uint))

		;; the human readable name of the token
		(get-name () (response (string-ascii 32) uint))

		;; the ticker symbol, or empty if none
		(get-symbol () (response (string-ascii 32) uint))

		;; the number of decimals used, e.g. 6 would mean 1_000_000 represents 1 token
		(get-decimals () (response uint uint))

		;; the balance of the passed principal
		(get-balance (principal) (response uint uint))

		;; the current total supply (which does not need to be a constant)
		(get-total-supply () (response uint uint))

		;; an optional URI that represents metadata of this token
		(get-token-uri () (response (optional (string-utf8 256)) uint))
	)
)