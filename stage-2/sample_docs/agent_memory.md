# Agent 记忆分层（教学样例）

## 三种记忆

1. **短期上下文（Working Context）**  
   当前对话窗口里的 messages，模型直接可见，容量受 token 限制。

2. **会话记忆（Session Memory）**  
   同一会话内的历史，通常存在数据库或 session store，可按需加载进上下文。

3. **长期记忆（Long-term Memory）**  
   跨会话持久化的事实与偏好，例如「用户叫 Alex、喜欢 Python」。  
   Stage 2 用 **mem0** 实现这一层。

## RAG 与记忆的区别

- **RAG**：从外部知识库检索文档片段，回答「资料里写了什么」。
- **长期记忆**：记住「这个用户是谁、之前聊过什么结论」。

两者可以并存：RAG 提供证据，mem0 提供用户画像。
