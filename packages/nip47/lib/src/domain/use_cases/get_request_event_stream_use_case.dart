import 'package:nip47/src/domain/entities/entities.dart';
import 'package:nip47/src/domain/repositories/request_repository.dart';

class GetRequestEventStreamUseCase {
  final RequestRepository _requestRepository;

  GetRequestEventStreamUseCase({
    required RequestRepository requestRepository,
  }) : _requestRepository = requestRepository;

  Stream<RequestEvent> execute() {
    return _requestRepository.requestStream;
  }
}
