.class public abstract Lcom/google/android/gms/common/internal/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/p;
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/p$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/common/internal/p$1;-><init>(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-object v0
.end method

.method public static a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/p;
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/p$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/common/internal/p$2;-><init>(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/b/ab;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/p;
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/p$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/common/internal/p$3;-><init>(Lcom/google/android/gms/b/ab;Landroid/content/Intent;I)V

    return-object v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/p;->a()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "DialogRedirect"

    const-string v1, "Can\'t redirect to app settings for Google Play services"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
