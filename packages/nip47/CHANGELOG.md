## 0.5.1

 - **FEAT**: use sqlite date text format.

## 0.5.0+2

 - **REFACTOR**: use iso timestamps for drift datetimes.

## 0.5.0+1

## 0.5.0

 - Clean(er) Architecture

## 0.4.0+3

## 0.4.0+2

 - **FIX**: bugs.

## 0.4.0+1

 - **FIX**: wrong kind for nip47 notification.

## 0.4.0

 - **FIX**: multiple relays should be possible.

## 0.3.0+2

 - **FIX**: list transactions transactions mapping.

## 0.3.0+1

 - **FIX**: null type for bool in unpaid field of of list transactions request.

## 0.3.0

 - WalletService interface change for better reusability and cleaner architecture

## 0.2.1+3

 - **FIX**: notifications were not set in connection instance when adding a connection.

## 0.2.1+2

 - **FIX**: optional params in getInfoRequestHandled.

## 0.2.1+1

 - **REFACTOR**: improve parameter names.

## 0.2.1

 - **FEAT**: export notification type enum.

## 0.2.0+1

- **FIX**: add missing parameters for notifications support.
- **FIX**: add missing lud16 parameter to add to a connection.

## 0.2.0

- Add 23196 kind notification event support

## 0.1.2+4

- Update a dependency to the latest release.

## 0.1.2+3

- Update a dependency to the latest release.

## 0.1.2+2

- **FIX**: nwc params with underscore + correct amount conversions.

## 0.1.2+1

- **FIX**: connecting, disconnecting and reconnecting logic with lock.

## 0.1.2

- **FEAT**: expose method to handle custom request responses.

## 0.1.1+4

- **FIX**: make getInfoRequestHandled params option in WalletService class.

## 0.1.1+3

- **FIX**: make getInfoRequestHandled params optional.

## 0.1.1+2

- **FIX**: make get info response params optional.

## 0.1.1+1

- **FIX**: wallet service repository parameter camel case.

## 0.1.1

- Update `nip01` dependency to `0.1.1`.
- Enable custom NWC methods, which can be useful for testing out or using new methods before they are added to nip47 as a standard.

## 0.1.0

- Update `nip01` dependency to `0.1.0`.
- Refactor `Nip47` class to use `Nip01Repository` and `RelayClientsManager`.
- Simplify `WalletService` class and expose it the public API for an end user.
- Remove `Wallet` class.

## 0.0.2

- Update repository URL in pubspec.yaml.
- Update `nip01` dependency to `^0.0.2`.

## 0.0.1

- Initial version.
