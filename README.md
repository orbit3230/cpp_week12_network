# 네트워크 시뮬레이터

네트워크 시뮬레이터를 구현하고자 한다.


## 클래스

### Node
링크로 연결할 수 있는 장치를 나타낸 클래스다.

### Host
우리가 일반적으로 사용하는 컴퓨터와 같이 네트워킹이 가능한 기기를 나타낸 클래스다. 하나의 주소를 가지며 여러 링크를 가지지만, 패킷 전송 시 하나의 링크를 랜덤으로 골라 전송한다.

### Service
Host에 설치된 프로그램을 나타낸 클래스다. 하나의 포트를 사용하며, 패킷을 생성하여 전송하거나 자신에게 온 패킷을 처리한다.

### Router
라우터를 나타낸 클래스다. 패킷을 받으면 라우팅 테이블에 따라 패킷을 다음 링크로 전송한다.

### Address
Host의 주소를 저장하는 클래스다.

### Link
Node를 잇는 경로다. 한 Node에서 패킷을 받아 다른 Node로 전달한다.

### ...Installer
Link와 각 Service를 설치하는 것에 도움을 주는 Helper 클래스다.

### EchoService
받은 패킷을 전송자에게 그대로 다시 전달하는 Service를 나타내는 클래스다.

### MessageService
send 함수를 호출하여 문자열 데이터를 네트워크로 전송할 수 있는 Service를 나타낸 클래스다.
