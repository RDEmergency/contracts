# 與 GitHub 溝通此合約 
1. 點擊左邊第四個像插座的圖示(Plugin manager)，搜尋 DGIT，點擊 "Activate"。

---

## 使用 DGIT Clone 專案
1. CLONE 專案。
2. 展開 "GitHub" 找 "CLONE"
3. 在 "URL" 設定 GitHub 的 Url (如：https://github.com/RDEmergency/contracts)。
4. 在 "BRANCH" 設定分支 (如:main)。
5. 點擊 "clone" 。

---

## Push 專案。
1. 前往 [github => Developer settings](https://github.com/settings/tokens)，點擊 "Personal access tokens"，點擊 "Generate new token"，勾選 "write:packages"。再複製 token(該值只會顯示一次，請妥善保管)。
2. 開 "GitHub " 找 "CONFIG" ，將剛剛複製的 token 填入 "PERSONAL GITHUB TOKEN"，點擊 "Copy token to clipboard"。(下面的Name 和 EMAIL 請填寫，確保之後版控處理)
3. 展開 "Surce control " 找 "Message" 填寫要簽入的訊息。
4. "CHANGES" 是有異動的檔案，將想簽入的檔案旁邊點 "+"。
5. 點擊 "git commit"。
6. 展開 "GitHub" 找 "COMMANDS"，點擊 "push"。

---