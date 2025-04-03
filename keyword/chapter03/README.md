week 03

keyword

<aside>
📌

**List와 ForEach를 사용하여 리스트를 구성할 때, ForEach의 역할은 무엇인가요?**

</aside>

- **여기에 답을 적어주세요!**
    
    ForEach(values){ value in ~~ } 구문을 사용하여, 배열형식의 자료 안에 있는 값들을 가공하여, View의 형태로 제공하는 형태를 만들 수 있음.
    

<aside>
📌

**Identifiable 프로토콜을 활용하면 데이터 바인딩이 어떻게 용이해지나요? 구체적인 이유를 설명하세요.**

</aside>

- **여기에 답을 적어주세요!**
    
    각 개체를 구분할 수 있는 ID를 부여(Ex. UUID)해주기에 이에 관한 추가적인 작업이 필요하지 않음
    

<aside>
📌

**ScrollView를 사용할 때, 내부 콘텐츠 크기를 적절히 설정하지 않으면 발생할 수 있는 문제는 무엇인가요?**

</aside>

- **여기에 답을 적어주세요!**
    
    Case 1. 내부 컨텐츠가 스크롤 뷰보다 작을 경우 스크롤 기능이 비활성화됨
    
    Case 2. 내부 컨텐츠의 사이즈에 대한 제약이 없을 경우 무한히 늘어남
    

<aside>
📌

**LazyVGrid와 LazyHGrid를 사용할 때, GridItem을 활용하는 이유는 무엇인가요?**

</aside>

- **여기에 답을 적어주세요!**
    
    **GridItem**을 사용하면 layout을 쉽게 설정할 수 있음
    
    - `.fixed(_:)` → 고정 크기
    - `.flexible(_:)` → 가변 크기
    - `.adaptive(_:)` → 자동 배치

<aside>
📌

**SwiftUI에서 NavigationStack과 NavigationLink를 활용한 네비게이션 라우팅 방식은 무엇이며, 이를 효과적으로 관리하는 방법은 무엇인가요?**

</aside>

- **여기에 답을 적어주세요!**
    - **`NavigationStack`** 내에서 여러 개의 화면을 Push & Pop 방식으로 전환 가능
    - 사용자가 특정 이전으로 돌아와도 데이터가 사라지지 않음
