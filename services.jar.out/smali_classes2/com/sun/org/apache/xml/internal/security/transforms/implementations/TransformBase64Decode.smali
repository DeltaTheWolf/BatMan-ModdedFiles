.class public Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformBase64Decode;
.super Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;


# static fields
.field public static final implementedTransformURI:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#base64"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetURI()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#base64"

    return-object v0
.end method

.method protected enginePerformTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;,
            Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformBase64Decode;->enginePerformTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v0

    return-object v0
.end method

.method protected enginePerformTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;,
            Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->isElement()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->isOctetStream()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_0
    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->isByteArray()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getBytes()[B

    move-result-object v4

    invoke-static {v4, p2}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decode([BLjava/io/OutputStream;)V

    :goto_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    const/4 v4, 0x0

    check-cast v4, [B

    invoke-direct {v0, v4}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;-><init>([B)V

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->setOutputStream(Ljava/io/OutputStream;)V

    return-object v0

    :cond_2
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getSubNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getSubNode()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    :goto_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformBase64Decode;->traverseElement(Lorg/w3c/dom/Element;Ljava/lang/StringBuffer;)V

    if-eqz p2, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4, p2}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decode([BLjava/io/OutputStream;)V

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    const/4 v4, 0x0

    check-cast v4, [B

    invoke-direct {v2, v4}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;-><init>([B)V

    invoke-virtual {v2, p2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->setOutputStream(Ljava/io/OutputStream;)V

    return-object v2

    :cond_3
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v4, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    invoke-direct {v4, v2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;-><init>([B)V

    return-object v4

    :cond_5
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->isNodeSet()Z
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getOctetStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformBase64Decode;->traverseElement(Lorg/w3c/dom/Element;Ljava/lang/StringBuffer;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    new-instance v4, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    invoke-direct {v4, v3}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;-><init>([B)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v4

    :cond_6
    :try_start_2
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decode([B)[B

    move-result-object v1

    new-instance v4, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    invoke-direct {v4, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;-><init>([B)V

    return-object v4

    :cond_7
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->isNodeSet()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getOctetStreamReal()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v4, p2}, Lcom/sun/org/apache/xml/internal/security/utils/Base64;->decode(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v4, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v5, "Base64Decoding"

    invoke-direct {v4, v5, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v4, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v5, "c14n.Canonicalizer.Exception"

    invoke-direct {v4, v5, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    :catch_2
    move-exception v0

    new-instance v4, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v5, "SAX exception"

    invoke-direct {v4, v5, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_3
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/Base64DecodingException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method traverseElement(Lorg/w3c/dom/Element;Ljava/lang/StringBuffer;)V
    .locals 2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    move-object v1, v0

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v1, p2}, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformBase64Decode;->traverseElement(Lorg/w3c/dom/Element;Ljava/lang/StringBuffer;)V

    goto :goto_1

    :pswitch_2
    move-object v1, v0

    check-cast v1, Lorg/w3c/dom/Text;

    invoke-interface {v1}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
