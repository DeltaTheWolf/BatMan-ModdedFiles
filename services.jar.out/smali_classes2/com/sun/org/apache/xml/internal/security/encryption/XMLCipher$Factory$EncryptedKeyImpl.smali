.class Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedKeyImpl;
.super Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;

# interfaces
.implements Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncryptedKeyImpl"
.end annotation


# instance fields
.field private carriedName:Ljava/lang/String;

.field private keyRecipient:Ljava/lang/String;

.field private referenceList:Lcom/sun/org/apache/xml/internal/security/encryption/ReferenceList;

.field private final synthetic this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;-><init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;)V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedKeyImpl;->this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedKeyImpl;->keyRecipient:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedKeyImpl;->referenceList:Lcom/sun/org/apache/xml/internal/security/encryption/ReferenceList;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedKeyImpl;->carriedName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCarriedName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedKeyImpl;->carriedName:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipient()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedKeyImpl;->keyRecipient:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceList()Lcom/sun/org/apache/xml/internal/security/encryption/ReferenceList;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedKeyImpl;->referenceList:Lcom/sun/org/apache/xml/internal/security/encryption/ReferenceList;

    return-object v0
.end method

.method public setCarriedName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedKeyImpl;->carriedName:Ljava/lang/String;

    return-void
.end method

.method public setRecipient(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedKeyImpl;->keyRecipient:Ljava/lang/String;

    return-void
.end method

.method public setReferenceList(Lcom/sun/org/apache/xml/internal/security/encryption/ReferenceList;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedKeyImpl;->referenceList:Lcom/sun/org/apache/xml/internal/security/encryption/ReferenceList;

    return-void
.end method

.method toElement()Lorg/w3c/dom/Element;
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedKeyImpl;->this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->access$400(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;

    move-result-object v3

    const-string/jumbo v4, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v5, "EncryptedKey"

    invoke-static {v3, v4, v5}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->createElementForFamily(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->getId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :goto_0
    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->getType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    :goto_1
    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->getMimeType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    :goto_2
    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->getEncoding()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    :goto_3
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedKeyImpl;->getRecipient()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    :goto_4
    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->getEncryptionMethod()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;

    move-result-object v3

    if-nez v3, :cond_6

    :goto_5
    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->getKeyInfo()Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    move-result-object v3

    if-nez v3, :cond_7

    :goto_6
    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->getCipherData()Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherDataImpl;

    invoke-virtual {v3}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherDataImpl;->toElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->getEncryptionProperties()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperties;

    move-result-object v3

    if-nez v3, :cond_8

    :goto_7
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedKeyImpl;->referenceList:Lcom/sun/org/apache/xml/internal/security/encryption/ReferenceList;

    if-nez v3, :cond_9

    :cond_0
    :goto_8
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedKeyImpl;->carriedName:Ljava/lang/String;

    if-nez v3, :cond_a

    :goto_9
    return-object v0

    :cond_1
    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->getId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Id"

    invoke-interface {v0, v6, v4, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Type"

    invoke-interface {v0, v6, v4, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->getMimeType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "MimeType"

    invoke-interface {v0, v6, v4, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Encoding"

    invoke-interface {v0, v6, v4, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedKeyImpl;->getRecipient()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Recipient"

    invoke-interface {v0, v6, v4, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->getEncryptionMethod()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;

    invoke-virtual {v3}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;->toElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_5

    :cond_7
    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->getKeyInfo()Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_6

    :cond_8
    invoke-super {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedTypeImpl;->getEncryptionProperties()Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperties;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertiesImpl;

    invoke-virtual {v3}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertiesImpl;->toElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_7

    :cond_9
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedKeyImpl;->referenceList:Lcom/sun/org/apache/xml/internal/security/encryption/ReferenceList;

    invoke-interface {v3}, Lcom/sun/org/apache/xml/internal/security/encryption/ReferenceList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedKeyImpl;->getReferenceList()Lcom/sun/org/apache/xml/internal/security/encryption/ReferenceList;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl;

    invoke-virtual {v3}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl;->toElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_8

    :cond_a
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedKeyImpl;->this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->access$400(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;

    move-result-object v3

    const-string/jumbo v4, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v5, "CarriedKeyName"

    invoke-static {v3, v4, v5}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->createElementForFamily(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedKeyImpl;->this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->access$400(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptedKeyImpl;->carriedName:Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_9
.end method
