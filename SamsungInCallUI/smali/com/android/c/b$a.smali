.class Lcom/android/c/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Z

.field final b:Z

.field final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/c/b$a;->a:Z

    iput-boolean p2, p0, Lcom/android/c/b$a;->b:Z

    iput-object p3, p0, Lcom/android/c/b$a;->c:Ljava/lang/String;

    return-void
.end method
