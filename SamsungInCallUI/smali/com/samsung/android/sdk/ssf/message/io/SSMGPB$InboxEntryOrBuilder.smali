.class public interface abstract Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$InboxEntryOrBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InboxEntryOrBuilder"
.end annotation


# virtual methods
.method public abstract getChatMsg()Ljava/lang/String;
.end method

.method public abstract getChatType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;
.end method

.method public abstract getChatroomId()J
.end method

.method public abstract getMsgId()J
.end method

.method public abstract getMsgTtl()I
.end method

.method public abstract getMsgType()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$MsgType;
.end method

.method public abstract getReceiver()J
.end method

.method public abstract getSecureChatMsg()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSender()J
.end method

.method public abstract getSentTime()J
.end method

.method public abstract hasChatMsg()Z
.end method

.method public abstract hasChatType()Z
.end method

.method public abstract hasChatroomId()Z
.end method

.method public abstract hasMsgId()Z
.end method

.method public abstract hasMsgTtl()Z
.end method

.method public abstract hasMsgType()Z
.end method

.method public abstract hasReceiver()Z
.end method

.method public abstract hasSecureChatMsg()Z
.end method

.method public abstract hasSender()Z
.end method

.method public abstract hasSentTime()Z
.end method
