import 'package:pull_to_refresh/pull_to_refresh.dart';

class InfinitePaging {
  int _currentPage = 1;
  int _perPage = 50;

  final RefreshController _refreshController = RefreshController(initialRefresh: false);

  void refreshComplete({required bool success}) {
    if (success) {
      _refreshController.refreshCompleted();
    } else {
      _refreshController.refreshFailed();
    }
  }
  void loadComplete({required bool success, required bool isLastPage}) {
    if (success) {
      if (isLastPage) {
        _refreshController.loadNoData();
      } else {
        _refreshController.loadComplete();
      }
    } else {
      _refreshController.loadFailed();
    }
  }

  void nextPage(int currentPage) {
    if (_currentPage == currentPage) _currentPage++;
  }

  void resetCurrentPage(){
    _currentPage = 1;
  }

  RefreshController get refreshController => _refreshController;

  int get currentPage => _currentPage;

  int get perPage => _perPage;

  void setPerPage(int perPage) {
    _perPage = perPage;
  }
}
