.class public final enum Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/shop/ShopManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;

.field public static final enum Sticker:Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;

.field public static final enum Unknown:Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;

    const-string v1, "Sticker"

    invoke-direct {v0, v1, v4, v3}, Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;->Sticker:Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;

    const-string v1, "Unknown"

    const/16 v2, 0x63

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;->Unknown:Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;

    sget-object v1, Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;->Sticker:Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;->Unknown:Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;->$VALUES:[Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;->$VALUES:[Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;->mValue:I

    return v0
.end method
