.class public Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;
.super Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;


# static fields
.field public static final _URI:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#dsa-sha1"

.field static synthetic class$com$sun$org$apache$xml$internal$security$algorithms$implementations$SignatureDSA:Ljava/lang/Class;

.field static synthetic class$java$security$PrivateKey:Ljava/lang/Class;

.field static synthetic class$java$security$PublicKey:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field private _signatureAlgorithm:Ljava/security/Signature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->class$com$sun$org$apache$xml$internal$security$algorithms$implementations$SignatureDSA:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->class$com$sun$org$apache$xml$internal$security$algorithms$implementations$SignatureDSA:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->log:Ljava/util/logging/Logger;

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.algorithms.implementations.SignatureDSA"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->class$com$sun$org$apache$xml$internal$security$algorithms$implementations$SignatureDSA:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;-><init>()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->_signatureAlgorithm:Ljava/security/Signature;

    const-string/jumbo v3, "http://www.w3.org/2000/09/xmldsig#dsa-sha1"

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->translateURItoJCEID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    :try_start_0
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->_signatureAlgorithm:Ljava/security/Signature;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    sget-object v3, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "Created SignatureDSA using "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-instance v3, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v4, "algorithms.NoSuchAlgorithm"

    invoke-direct {v3, v4, v2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static convertASN1toXMLDSIG([B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0x14

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x3

    aget-byte v0, p0, v5

    move v1, v0

    :goto_0
    if-gtz v1, :cond_3

    :cond_0
    add-int/lit8 v5, v0, 0x5

    aget-byte v2, p0, v5

    move v3, v2

    :goto_1
    if-gtz v3, :cond_4

    :cond_1
    aget-byte v5, p0, v6

    const/16 v6, 0x30

    if-eq v5, v6, :cond_5

    :cond_2
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Invalid ASN.1 format of DSA signature"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    add-int/lit8 v5, v0, 0x4

    sub-int/2addr v5, v1

    aget-byte v5, p0, v5

    if-nez v5, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v5, v0, 0x6

    add-int/2addr v5, v2

    sub-int/2addr v5, v3

    aget-byte v5, p0, v5

    if-nez v5, :cond_1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x1

    aget-byte v5, p0, v5

    array-length v6, p0

    add-int/lit8 v6, v6, -0x2

    if-ne v5, v6, :cond_2

    aget-byte v5, p0, v7

    if-ne v5, v7, :cond_2

    if-gt v1, v8, :cond_2

    add-int/lit8 v5, v0, 0x4

    aget-byte v5, p0, v5

    if-ne v5, v7, :cond_2

    if-gt v3, v8, :cond_2

    const/16 v5, 0x28

    new-array v4, v5, [B

    add-int/lit8 v5, v0, 0x4

    sub-int/2addr v5, v1

    rsub-int/lit8 v6, v1, 0x14

    invoke-static {p0, v5, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v0, 0x6

    add-int/2addr v5, v2

    sub-int/2addr v5, v3

    rsub-int/lit8 v6, v3, 0x28

    invoke-static {p0, v5, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4
.end method

.method private static convertXMLDSIGtoASN1([B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v7, 0x0

    array-length v5, p0

    const/16 v6, 0x28

    if-ne v5, v6, :cond_2

    const/16 v0, 0x14

    :goto_0
    if-gtz v0, :cond_3

    :cond_0
    move v1, v0

    rsub-int/lit8 v5, v0, 0x14

    aget-byte v5, p0, v5

    if-ltz v5, :cond_4

    :goto_1
    const/16 v2, 0x14

    :goto_2
    if-gtz v2, :cond_5

    :cond_1
    move v3, v2

    rsub-int/lit8 v5, v2, 0x28

    aget-byte v5, p0, v5

    if-ltz v5, :cond_6

    :goto_3
    add-int/lit8 v5, v1, 0x6

    add-int/2addr v5, v3

    new-array v4, v5, [B

    const/16 v5, 0x30

    aput-byte v5, v4, v7

    add-int/lit8 v5, v1, 0x4

    add-int/2addr v5, v3

    int-to-byte v5, v5

    int-to-byte v5, v5

    const/4 v6, 0x1

    aput-byte v5, v4, v6

    aput-byte v8, v4, v8

    int-to-byte v5, v1

    int-to-byte v5, v5

    const/4 v6, 0x3

    aput-byte v5, v4, v6

    rsub-int/lit8 v5, v0, 0x14

    add-int/lit8 v6, v1, 0x4

    sub-int/2addr v6, v0

    invoke-static {p0, v5, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v1, 0x4

    aput-byte v8, v4, v5

    add-int/lit8 v5, v1, 0x5

    int-to-byte v6, v3

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    rsub-int/lit8 v5, v2, 0x28

    add-int/lit8 v6, v1, 0x6

    add-int/2addr v6, v3

    sub-int/2addr v6, v2

    invoke-static {p0, v5, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    :cond_2
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Invalid XMLDSIG format of DSA signature"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    rsub-int/lit8 v5, v0, 0x14

    aget-byte v5, p0, v5

    if-nez v5, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    rsub-int/lit8 v5, v2, 0x28

    aget-byte v5, p0, v5

    if-nez v5, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method


# virtual methods
.method protected engineGetJCEAlgorithmString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->_signatureAlgorithm:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected engineGetJCEProviderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->_signatureAlgorithm:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected engineGetURI()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#dsa-sha1"

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/Key;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    const/4 v4, 0x0

    instance-of v3, p1, Ljava/security/PrivateKey;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->_signatureAlgorithm:Ljava/security/Signature;

    check-cast p1, Ljava/security/PrivateKey;

    invoke-virtual {v3, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->class$java$security$PrivateKey:Ljava/lang/Class;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->class$java$security$PrivateKey:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    new-instance v3, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v4, "algorithms.WrongKeyForThisOperation"

    invoke-direct {v3, v4, v2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_1
    const-string/jumbo v3, "java.security.PrivateKey"

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->class$java$security$PrivateKey:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v4, "empty"

    invoke-direct {v3, v4, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method protected engineInitSign(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    const/4 v4, 0x0

    instance-of v3, p1, Ljava/security/PrivateKey;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->_signatureAlgorithm:Ljava/security/Signature;

    check-cast p1, Ljava/security/PrivateKey;

    invoke-virtual {v3, p1, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->class$java$security$PrivateKey:Ljava/lang/Class;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->class$java$security$PrivateKey:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    new-instance v3, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v4, "algorithms.WrongKeyForThisOperation"

    invoke-direct {v3, v4, v2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_1
    const-string/jumbo v3, "java.security.PrivateKey"

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->class$java$security$PrivateKey:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v4, "empty"

    invoke-direct {v3, v4, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method protected engineInitSign(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v1, "algorithms.CannotUseAlgorithmParameterSpecOnDSA"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitVerify(Ljava/security/Key;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    const/4 v4, 0x0

    instance-of v3, p1, Ljava/security/PublicKey;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->_signatureAlgorithm:Ljava/security/Signature;

    check-cast p1, Ljava/security/PublicKey;

    invoke-virtual {v3, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->class$java$security$PublicKey:Ljava/lang/Class;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->class$java$security$PublicKey:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    new-instance v3, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v4, "algorithms.WrongKeyForThisOperation"

    invoke-direct {v3, v4, v2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_1
    const-string/jumbo v3, "java.security.PublicKey"

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->class$java$security$PublicKey:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v4, "empty"

    invoke-direct {v3, v4, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method protected engineSetHMACOutputLength(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v1, "algorithms.HMACOutputLengthOnlyForHMAC"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->_signatureAlgorithm:Ljava/security/Signature;

    invoke-virtual {v1, p1}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected engineSign()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->_signatureAlgorithm:Ljava/security/Signature;

    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->convertASN1toXMLDSIG([B)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected engineUpdate(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->_signatureAlgorithm:Ljava/security/Signature;

    invoke-virtual {v1, p1}, Ljava/security/Signature;->update(B)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected engineUpdate([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->_signatureAlgorithm:Ljava/security/Signature;

    invoke-virtual {v1, p1}, Ljava/security/Signature;->update([B)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected engineUpdate([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->_signatureAlgorithm:Ljava/security/Signature;

    invoke-virtual {v1, p1, p2, p3}, Ljava/security/Signature;->update([BII)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected engineVerify([B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->convertXMLDSIGtoASN1([B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->_signatureAlgorithm:Ljava/security/Signature;

    invoke-virtual {v1, v0}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    return v1

    :cond_0
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureDSA;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "Called DSA.verify() on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
