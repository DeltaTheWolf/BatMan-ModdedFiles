.class Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;
.super Ljava/lang/Object;
.source "DOMSerializerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xml/serialize/DOMSerializerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DocumentMethods"
.end annotation


# static fields
.field private static fgDocumentGetInputEncodingMethod:Ljava/lang/reflect/Method;

.field private static fgDocumentGetXmlEncodingMethod:Ljava/lang/reflect/Method;

.field private static fgDocumentGetXmlVersionMethod:Ljava/lang/reflect/Method;

.field private static fgDocumentMethodsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    sput-object v4, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetXmlVersionMethod:Ljava/lang/reflect/Method;

    sput-object v4, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetInputEncodingMethod:Ljava/lang/reflect/Method;

    sput-object v4, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetXmlEncodingMethod:Ljava/lang/reflect/Method;

    sput-boolean v5, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentMethodsAvailable:Z

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lmf/org/w3c/dom/Document;

    const-string/jumbo v3, "getXmlVersion"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetXmlVersionMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lmf/org/w3c/dom/Document;

    const-string/jumbo v3, "getInputEncoding"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetInputEncodingMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lmf/org/w3c/dom/Document;

    const-string/jumbo v3, "getXmlEncoding"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetXmlEncodingMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    sput-boolean v1, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentMethodsAvailable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sput-object v4, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetXmlVersionMethod:Ljava/lang/reflect/Method;

    sput-object v4, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetInputEncodingMethod:Ljava/lang/reflect/Method;

    sput-object v4, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetXmlEncodingMethod:Ljava/lang/reflect/Method;

    sput-boolean v5, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentMethodsAvailable:Z

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    sget-boolean v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentMethodsAvailable:Z

    return v0
.end method

.method static synthetic access$1()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetXmlVersionMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetInputEncodingMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$3()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->fgDocumentGetXmlEncodingMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method
