## 📊 Data I/O Utilities
_문자열 기반 데이터 입출력 유틸리티_

---

### 📁 Path: `lib/data/`
This folder contains modules for string-based parsing and encoding of structured data formats.  
_이 폴더는 문자열 기반 구조화된 데이터 포맷의 파싱 및 인코딩 유틸을 포함합니다._

---

### 📦 Modules

- **[`json_data_io.dart`](json_data_io.dart)**  
  Encode/decode JSON strings to Map or DTOs  
  _JSON 문자열을 Map 또는 DTO로 인코딩/디코딩_

- **[`csv_data_io.dart`](csv_data_io.dart)**  
  Encode/decode CSV strings to Map or DTOs  
  _CSV 문자열을 Map 또는 DTO로 인코딩/디코딩_

- **[`xml_data_io.dart`](xml_data_io.dart)**  
  Encode/decode XML strings to Map  
  _XML 문자열을 Map으로 인코딩/디코딩_

---

### 🛠 Conventions

- Only string-based transformation (no file I/O)  
  _파일 입출력 없이 문자열만 처리함_
- Each module is standalone and has no internal dependencies  
  _모든 모듈은 독립적으로 작성되어 내부 의존성이 없음_
- Comments follow "English block → Korean block" style  
  _주석은 영문 블록 → 한글 블록 순서로 작성함_