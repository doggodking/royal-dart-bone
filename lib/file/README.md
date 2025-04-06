## 📂 File Utilities
File, path, name, size, MIME type utilities  
_파일, 경로, 이름, 크기, MIME 타입 유틸리티 모음_

---

### 📁 Path: `lib/file/`
All file-related utilities are organized in this folder.  
_모든 파일 관련 유틸리티는 이 폴더에 정리됩니다_

---

### 🧱 Core Modules

- **[`file_read_write.dart`](file_read_write.dart)**  
  Read and write text or binary files  
  _텍스트 및 바이너리 파일 입출력 처리_

- **[`file_temp_creator.dart`](file_temp_creator.dart)**  
  Create temporary files and folders  
  _임시 파일 및 폴더 생성_

- **[`file_size_formatter.dart`](file_size_formatter.dart)**  
  Format byte sizes into human-readable strings  
  _바이트 크기를 사람이 읽기 쉬운 단위로 변환_

---

### 🧩 Path & Naming Utilities

- **[`file_name_extractor.dart`](file_name_extractor.dart)**  
  Extract file name and extension from full path  
  _전체 경로에서 파일명과 확장자 추출, 확장자를 기반으로 용도 분류_

- **[`file_name_modifier.dart`](file_name_modifier.dart)**  
  Auto-rename files to avoid name collisions  
  _파일 이름 중복 방지를 위한 자동 리네이밍_

- **[`file_path_utils.dart`](file_path_utils.dart)**  
  Extract directory, parent path, and normalize paths  
  _디렉토리 추출, 상위 경로 확인, 경로 정규화_

---

### 🧠 Metadata Utilities

- **[`file_mime_detector.dart`](file_mime_detector.dart)**  
  Detect MIME type from file extension  
  _확장자로부터 MIME 타입 추정_

---

### 📌 Conventions

- Each utility file must be independently usable  
  _각 유틸 파일은 독립적으로 사용할 수 있어야 함_
- No cross-file imports between utilities  
  _유틸 파일 간 import 또는 함수 호출 금지_
- Use English block comments followed by Korean translations  
  _함수 설명은 영문 블록 → 한글 블록 순서로 작성_