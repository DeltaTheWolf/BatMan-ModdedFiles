.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->uploadContentsPublicMode(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/UploadContentsRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadContentsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

.field final synthetic val$error:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

.field final synthetic val$listener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadContentsListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadContentsListener;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$6;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$6;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadContentsListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$6;->val$error:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$6;->val$listener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadContentsListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare$6;->val$error:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadContentsListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    return-void
.end method
