.class public Lmf/org/apache/xerces/impl/XML11EntityScanner;
.super Lmf/org/apache/xerces/impl/XMLEntityScanner;
.source "XML11EntityScanner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public peekChar()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v1, v2, :cond_0

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v1, v2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    goto :goto_0

    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    :cond_2
    :goto_1
    const/16 v0, 0xa

    :cond_3
    return v0

    :cond_4
    const/16 v1, 0x85

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2028

    if-ne v0, v1, :cond_3

    goto :goto_1
.end method

.method public scanChar()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v11, 0x85

    const/16 v10, 0xd

    const/16 v9, 0xa

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v3, v4, :cond_2

    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v3, v5

    const/4 v2, 0x0

    if-ne v0, v9, :cond_3

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v8, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v3, v4, :cond_6

    :goto_1
    if-eq v0, v10, :cond_7

    :cond_1
    :goto_2
    const/16 v0, 0xa

    :goto_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    return v0

    :cond_2
    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    goto :goto_0

    :cond_3
    if-ne v0, v10, :cond_5

    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    :cond_5
    if-eq v0, v11, :cond_4

    const/16 v3, 0x2028

    if-eq v0, v3, :cond_4

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    int-to-char v4, v0

    int-to-char v4, v4

    aput-char v4, v3, v7

    invoke-virtual {p0, v8, v7}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v1, v3, v5

    if-eq v1, v9, :cond_1

    if-eq v1, v11, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_2
.end method

.method public scanContent(Lmf/org/apache/xerces/xni/XMLString;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v7, v8, :cond_4

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v8, v8, -0x1

    if-eq v7, v8, :cond_5

    :goto_0
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v0, v7, v6

    const/4 v5, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v2

    const/16 v7, 0xa

    if-ne v0, v7, :cond_6

    :cond_0
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v7, v9

    const/16 v7, 0xd

    if-eq v0, v7, :cond_d

    :cond_1
    const/16 v7, 0xa

    if-ne v0, v7, :cond_11

    :cond_2
    add-int/lit8 v5, v5, 0x1

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v8, 0x1

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v7, v8, :cond_14

    :goto_1
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_0

    :cond_3
    :goto_2
    move v3, v6

    :goto_3
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    if-ge v3, v7, :cond_15

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    const/16 v8, 0xa

    aput-char v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v8, v7}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v9, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v9, v9, -0x1

    aget-char v8, v8, v9

    int-to-char v8, v8

    const/4 v9, 0x0

    aput-char v8, v7, v9

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0, v8, v7}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v8, 0x0

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v8, 0x0

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    goto/16 :goto_0

    :cond_6
    const/16 v7, 0xd

    if-ne v0, v7, :cond_c

    :cond_7
    if-nez v2, :cond_0

    :cond_8
    :goto_4
    if-nez v2, :cond_17

    :cond_9
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ge v7, v8, :cond_a

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v7, v9

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11InternalEntityContent(I)Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :cond_a
    :goto_5
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v4, v7, v6

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    sub-int v9, v4, v5

    add-int/2addr v8, v9

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {p1, v7, v6, v4}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v8, :cond_1a

    const/4 v0, -0x1

    :cond_b
    :goto_6
    return v0

    :cond_c
    const/16 v7, 0x85

    if-eq v0, v7, :cond_7

    const/16 v7, 0x2028

    if-eq v0, v7, :cond_7

    goto :goto_4

    :cond_d
    if-eqz v2, :cond_1

    add-int/lit8 v5, v5, 0x1

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v8, 0x1

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v7, v8, :cond_f

    :goto_7
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v1, v7, v8

    const/16 v7, 0xa

    if-ne v1, v7, :cond_10

    :cond_e
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_f
    const/4 v6, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v9, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v10, v10, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v5, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v5, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_7

    :cond_10
    const/16 v7, 0x85

    if-eq v1, v7, :cond_e

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_11
    const/16 v7, 0x85

    if-ne v0, v7, :cond_13

    :cond_12
    if-nez v2, :cond_2

    :goto_8
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_2

    :cond_13
    const/16 v7, 0x2028

    if-eq v0, v7, :cond_12

    goto :goto_8

    :cond_14
    const/4 v6, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v9, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v10, v10, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v5, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v5, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    move-result v7

    if-nez v7, :cond_3

    goto/16 :goto_1

    :cond_15
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v4, v7, v6

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_8

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {p1, v7, v6, v4}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    const/4 v7, -0x1

    return v7

    :cond_16
    const/16 v7, 0x2028

    if-eq v0, v7, :cond_18

    :cond_17
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ge v7, v8, :cond_a

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v7, v9

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Content(I)Z

    move-result v7

    if-nez v7, :cond_19

    :cond_18
    :goto_9
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_5

    :cond_19
    const/16 v7, 0x85

    if-ne v0, v7, :cond_16

    goto :goto_9

    :cond_1a
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v7, v8

    const/16 v7, 0xd

    if-ne v0, v7, :cond_1c

    :cond_1b
    if-eqz v2, :cond_b

    const/16 v0, 0xa

    goto/16 :goto_6

    :cond_1c
    const/16 v7, 0x85

    if-eq v0, v7, :cond_1b

    const/16 v7, 0x2028

    if-eq v0, v7, :cond_1b

    goto/16 :goto_6
.end method

.method public scanData(Ljava/lang/String;Lmf/org/apache/xerces/util/XMLStringBuffer;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v8

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v13, v14, :cond_6

    :goto_0
    const/4 v1, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    sub-int/2addr v14, v5

    if-ge v13, v14, :cond_7

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    sub-int/2addr v14, v5

    if-ge v13, v14, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v2, v13, v12

    const/4 v11, 0x0

    const/16 v13, 0xa

    if-ne v2, v13, :cond_9

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v15, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v2, v13, v15

    const/16 v13, 0xd

    if-eq v2, v13, :cond_e

    :cond_3
    const/16 v13, 0xa

    if-ne v2, v13, :cond_12

    :cond_4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v14, 0x1

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v13, v14, :cond_15

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v14, v14, -0x1

    if-lt v13, v14, :cond_2

    :cond_5
    :goto_3
    move v9, v12

    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    if-ge v9, v13, :cond_16

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    const/16 v14, 0xa

    aput-char v14, v13, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    goto/16 :goto_0

    :cond_7
    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v15, v15, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-static/range {v13 .. v17}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v13, v14

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    move-result v1

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v14, 0x0

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v14, 0x0

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v10, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14, v10}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append([CII)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v15, v15, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/2addr v14, v15

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v15, v15, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    add-int/2addr v14, v15

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    const/4 v13, 0x0

    return v13

    :cond_9
    const/16 v13, 0xd

    if-ne v2, v13, :cond_d

    :cond_a
    if-nez v8, :cond_2

    :cond_b
    :goto_5
    if-nez v8, :cond_19

    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ge v13, v14, :cond_1b

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v15, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v2, v13, v15

    if-eq v2, v4, :cond_20

    const/16 v13, 0xa

    if-eq v2, v13, :cond_24

    invoke-static {v2}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v13

    if-nez v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v14, v14, -0x1

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v10, v13, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    sub-int v15, v10, v11

    add-int/2addr v14, v15

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v12, v10}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append([CII)V

    const/4 v13, 0x1

    return v13

    :cond_d
    const/16 v13, 0x85

    if-eq v2, v13, :cond_a

    const/16 v13, 0x2028

    if-eq v2, v13, :cond_a

    goto :goto_5

    :cond_e
    if-eqz v8, :cond_3

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v14, 0x1

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v13, v14, :cond_10

    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v3, v13, v14

    const/16 v13, 0xa

    if-ne v3, v13, :cond_11

    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    :cond_10
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v15, v15, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    add-int/2addr v14, v15

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v11, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v11, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    move-result v13

    if-nez v13, :cond_5

    goto :goto_6

    :cond_11
    const/16 v13, 0x85

    if-eq v3, v13, :cond_f

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    :cond_12
    const/16 v13, 0x85

    if-ne v2, v13, :cond_14

    :cond_13
    if-nez v8, :cond_4

    :goto_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v14, v14, -0x1

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_3

    :cond_14
    const/16 v13, 0x2028

    if-eq v2, v13, :cond_13

    goto :goto_7

    :cond_15
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v15, v15, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    add-int/2addr v14, v15

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v11, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v11, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v11, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    move-result v13

    if-nez v13, :cond_5

    goto/16 :goto_2

    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v10, v13, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v14, v14, -0x1

    if-ne v13, v14, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v12, v10}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append([CII)V

    const/4 v13, 0x1

    return v13

    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v14, v14, -0x1

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int v14, v6, v5

    if-eq v13, v14, :cond_1e

    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ge v13, v14, :cond_1b

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v15, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v2, v13, v15

    if-eq v2, v4, :cond_1c

    const/16 v13, 0xa

    if-ne v2, v13, :cond_1f

    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v14, v14, -0x1

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :cond_1b
    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v10, v13, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    sub-int v15, v10, v11

    add-int/2addr v14, v15

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    if-nez v7, :cond_25

    :goto_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v12, v10}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append([CII)V

    if-eqz v7, :cond_0

    if-nez v7, :cond_26

    const/4 v13, 0x1

    :goto_a
    return v13

    :cond_1c
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v6, v13, -0x1

    const/4 v9, 0x1

    :goto_b
    if-ge v9, v5, :cond_18

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v13, v14, :cond_1d

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v15, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v2, v13, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v2, :cond_17

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_1d
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v14, v9

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_8

    :cond_1e
    const/4 v7, 0x1

    goto :goto_8

    :cond_1f
    const/16 v13, 0xd

    if-eq v2, v13, :cond_1a

    const/16 v13, 0x85

    if-eq v2, v13, :cond_1a

    const/16 v13, 0x2028

    if-eq v2, v13, :cond_1a

    invoke-static {v2}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v13

    if-nez v13, :cond_19

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v14, v14, -0x1

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v10, v13, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    sub-int v15, v10, v11

    add-int/2addr v14, v15

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v12, v10}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append([CII)V

    const/4 v13, 0x1

    return v13

    :cond_20
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v6, v13, -0x1

    const/4 v9, 0x1

    :goto_c
    if-ge v9, v5, :cond_23

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v13, v14, :cond_21

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v15, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v2, v13, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v2, :cond_22

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_21
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v14, v9

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_8

    :cond_22
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v14, v14, -0x1

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :cond_23
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int v14, v6, v5

    if-ne v13, v14, :cond_c

    const/4 v7, 0x1

    goto/16 :goto_8

    :cond_24
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v14, v14, -0x1

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_8

    :cond_25
    sub-int/2addr v10, v5

    goto/16 :goto_9

    :cond_26
    const/4 v13, 0x0

    goto/16 :goto_a
.end method

.method public scanLiteral(ILmf/org/apache/xerces/xni/XMLString;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v7, v8, :cond_4

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v8, v8, -0x1

    if-eq v7, v8, :cond_5

    :goto_0
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v0, v7, v6

    const/4 v5, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v2

    const/16 v7, 0xa

    if-ne v0, v7, :cond_6

    :cond_0
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v7, v9

    const/16 v7, 0xd

    if-eq v0, v7, :cond_e

    :cond_1
    const/16 v7, 0xa

    if-ne v0, v7, :cond_12

    :cond_2
    add-int/lit8 v5, v5, 0x1

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v8, 0x1

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v7, v8, :cond_15

    :goto_1
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_0

    :cond_3
    :goto_2
    move v3, v6

    :goto_3
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    if-ge v3, v7, :cond_16

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    const/16 v8, 0xa

    aput-char v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v8, v7}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v9, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v9, v9, -0x1

    aget-char v8, v8, v9

    int-to-char v8, v8

    const/4 v9, 0x0

    aput-char v8, v7, v9

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0, v8, v7}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v8, 0x0

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v8, 0x0

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_0

    :cond_6
    const/16 v7, 0xd

    if-ne v0, v7, :cond_d

    :cond_7
    if-nez v2, :cond_0

    :cond_8
    :goto_4
    if-nez v2, :cond_18

    :goto_5
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ge v7, v8, :cond_b

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v7, v9

    if-eq v0, p1, :cond_1b

    :cond_9
    const/16 v7, 0x25

    if-ne v0, v7, :cond_1c

    :cond_a
    :goto_6
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :cond_b
    :goto_7
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v4, v7, v6

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    sub-int v9, v4, v5

    add-int/2addr v8, v9

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {p2, v7, v6, v4}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v8, :cond_1d

    const/4 v0, -0x1

    :cond_c
    :goto_8
    return v0

    :cond_d
    const/16 v7, 0x85

    if-eq v0, v7, :cond_7

    const/16 v7, 0x2028

    if-eq v0, v7, :cond_7

    goto :goto_4

    :cond_e
    if-eqz v2, :cond_1

    add-int/lit8 v5, v5, 0x1

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v8, 0x1

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v7, v8, :cond_10

    :goto_9
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v1, v7, v8

    const/16 v7, 0xa

    if-ne v1, v7, :cond_11

    :cond_f
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_10
    const/4 v6, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v9, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v10, v10, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v5, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v5, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_9

    :cond_11
    const/16 v7, 0x85

    if-eq v1, v7, :cond_f

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_12
    const/16 v7, 0x85

    if-ne v0, v7, :cond_14

    :cond_13
    if-nez v2, :cond_2

    :goto_a
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_2

    :cond_14
    const/16 v7, 0x2028

    if-eq v0, v7, :cond_13

    goto :goto_a

    :cond_15
    const/4 v6, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v9, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v10, v10, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v5, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v5, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    move-result v7

    if-nez v7, :cond_3

    goto/16 :goto_1

    :cond_16
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v4, v7, v6

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_8

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {p2, v7, v6, v4}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    const/4 v7, -0x1

    return v7

    :cond_17
    const/16 v7, 0x2028

    if-eq v0, v7, :cond_19

    :cond_18
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ge v7, v8, :cond_b

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v7, v9

    if-ne v0, p1, :cond_1a

    :cond_19
    :goto_b
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_7

    :cond_1a
    const/16 v7, 0x25

    if-eq v0, v7, :cond_19

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Content(I)Z

    move-result v7

    if-eqz v7, :cond_19

    const/16 v7, 0x85

    if-ne v0, v7, :cond_17

    goto :goto_b

    :cond_1b
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-boolean v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->literal:Z

    if-nez v7, :cond_9

    goto/16 :goto_6

    :cond_1c
    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11InternalEntityContent(I)Z

    move-result v7

    if-eqz v7, :cond_a

    goto/16 :goto_5

    :cond_1d
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v7, v8

    if-ne v0, p1, :cond_c

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-boolean v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->literal:Z

    if-eqz v7, :cond_c

    const/4 v0, -0x1

    goto/16 :goto_8
.end method

.method public scanNCName()Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v6, v7, :cond_0

    :goto_0
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v0, v6, v3

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NCNameStart(I)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v6

    if-nez v6, :cond_5

    return-object v10

    :cond_0
    invoke-virtual {p0, v8, v9}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v7, v6, :cond_4

    :cond_2
    :goto_1
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v6, v7

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NCName(I)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v6

    if-nez v6, :cond_c

    :cond_3
    :goto_2
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v2, v6, v3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr v7, v2

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    const/4 v4, 0x0

    if-gtz v2, :cond_13

    :goto_3
    return-object v4

    :cond_4
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    int-to-char v7, v0

    aput-char v7, v6, v8

    const/4 v3, 0x0

    invoke-virtual {p0, v9, v8}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v6, v7, v8, v9}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_5
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v7, v6, :cond_8

    :cond_6
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v1, v6, v7

    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v6

    if-nez v6, :cond_9

    :cond_7
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    return-object v10

    :cond_8
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    int-to-char v7, v0

    aput-char v7, v6, v8

    const/4 v3, 0x0

    invoke-virtual {p0, v9, v8}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    return-object v10

    :cond_9
    invoke-static {v0, v1}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v6

    invoke-static {v6}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NCNameStart(I)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v6, :cond_2

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    int-to-char v7, v0

    aput-char v7, v6, v8

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    int-to-char v7, v1

    aput-char v7, v6, v9

    const/4 v3, 0x0

    invoke-virtual {p0, v11, v8}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/lit8 v7, v7, 0x2

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v6, v7, v8, v11}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_a
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v6, :cond_2

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v2, v6, v3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    if-eq v2, v6, :cond_b

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v6, v3, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v8}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_1

    :cond_b
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    shl-int/lit8 v6, v6, 0x1

    new-array v5, v6, [C

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v6, v3, v5, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-object v5, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    goto :goto_4

    :cond_c
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v7, v6, :cond_f

    :cond_d
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v1, v6, v7

    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v6

    if-nez v6, :cond_11

    :cond_e
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_2

    :cond_f
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v2, v6, v3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    if-eq v2, v6, :cond_10

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v6, v3, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_5
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v8}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_2

    :cond_10
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    shl-int/lit8 v6, v6, 0x1

    new-array v5, v6, [C

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v6, v3, v5, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-object v5, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    goto :goto_5

    :cond_11
    invoke-static {v0, v1}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v6

    invoke-static {v6}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NCName(I)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v6, :cond_2

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v2, v6, v3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    if-eq v2, v6, :cond_12

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v6, v3, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_6
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v8}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_1

    :cond_12
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    shl-int/lit8 v6, v6, 0x1

    new-array v5, v6, [C

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v6, v3, v5, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-object v5, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    goto :goto_6

    :cond_13
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v6, v7, v3, v2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3
.end method

.method public scanName()Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v6, v7, :cond_0

    :goto_0
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v0, v6, v3

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameStart(I)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v6

    if-nez v6, :cond_5

    return-object v10

    :cond_0
    invoke-virtual {p0, v8, v9}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v7, v6, :cond_4

    :cond_2
    :goto_1
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v6, v7

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Name(I)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v6

    if-nez v6, :cond_c

    :cond_3
    :goto_2
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v2, v6, v3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr v7, v2

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    const/4 v4, 0x0

    if-gtz v2, :cond_13

    :goto_3
    return-object v4

    :cond_4
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    int-to-char v7, v0

    aput-char v7, v6, v8

    const/4 v3, 0x0

    invoke-virtual {p0, v9, v8}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v6, v7, v8, v9}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_5
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v7, v6, :cond_8

    :cond_6
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v1, v6, v7

    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v6

    if-nez v6, :cond_9

    :cond_7
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    return-object v10

    :cond_8
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    int-to-char v7, v0

    aput-char v7, v6, v8

    const/4 v3, 0x0

    invoke-virtual {p0, v9, v8}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    return-object v10

    :cond_9
    invoke-static {v0, v1}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v6

    invoke-static {v6}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameStart(I)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v6, :cond_2

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    int-to-char v7, v0

    aput-char v7, v6, v8

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    int-to-char v7, v1

    aput-char v7, v6, v9

    const/4 v3, 0x0

    invoke-virtual {p0, v11, v8}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/lit8 v7, v7, 0x2

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v6, v7, v8, v11}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_a
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v6, :cond_2

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v2, v6, v3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    if-eq v2, v6, :cond_b

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v6, v3, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v8}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_1

    :cond_b
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    shl-int/lit8 v6, v6, 0x1

    new-array v5, v6, [C

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v6, v3, v5, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-object v5, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    goto :goto_4

    :cond_c
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v7, v6, :cond_f

    :cond_d
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v1, v6, v7

    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v6

    if-nez v6, :cond_11

    :cond_e
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_2

    :cond_f
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v2, v6, v3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    if-eq v2, v6, :cond_10

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v6, v3, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_5
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v8}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    goto/16 :goto_2

    :cond_10
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    shl-int/lit8 v6, v6, 0x1

    new-array v5, v6, [C

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v6, v3, v5, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-object v5, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    goto :goto_5

    :cond_11
    invoke-static {v0, v1}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v6

    invoke-static {v6}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Name(I)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v6, :cond_2

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v2, v6, v3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    if-eq v2, v6, :cond_12

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v6, v3, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_6
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v8}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_1

    :cond_12
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    shl-int/lit8 v6, v6, 0x1

    new-array v5, v6, [C

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v6, v3, v5, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-object v5, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    goto :goto_6

    :cond_13
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v6, v7, v3, v2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3
.end method

.method public scanNmtoken()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v6, v7, :cond_2

    :goto_0
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :cond_0
    :goto_1
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v6, v7

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Name(I)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_1
    :goto_2
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v2, v6, v3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr v7, v2

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    const/4 v4, 0x0

    if-gtz v2, :cond_c

    :goto_3
    return-object v4

    :cond_2
    const/4 v6, 0x1

    invoke-virtual {p0, v8, v6}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v6, :cond_0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v2, v6, v3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    if-eq v2, v6, :cond_4

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v6, v3, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v8}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    shl-int/lit8 v6, v6, 0x1

    new-array v5, v6, [C

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v6, v3, v5, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-object v5, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    goto :goto_4

    :cond_5
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v7, v6, :cond_8

    :cond_6
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v1, v6, v7

    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v6

    if-nez v6, :cond_a

    :cond_7
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_2

    :cond_8
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v2, v6, v3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    if-eq v2, v6, :cond_9

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v6, v3, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_5
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v8}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_2

    :cond_9
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    shl-int/lit8 v6, v6, 0x1

    new-array v5, v6, [C

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v6, v3, v5, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-object v5, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    goto :goto_5

    :cond_a
    invoke-static {v0, v1}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v6

    invoke-static {v6}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Name(I)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v6, :cond_0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v2, v6, v3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    if-eq v2, v6, :cond_b

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v6, v3, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_6
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v8}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    move-result v6

    if-nez v6, :cond_1

    goto/16 :goto_1

    :cond_b
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    shl-int/lit8 v6, v6, 0x1

    new-array v5, v6, [C

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v6, v3, v5, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-object v5, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    goto :goto_6

    :cond_c
    iget-object v6, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v6, v7, v3, v2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3
.end method

.method public scanQName(Lmf/org/apache/xerces/xni/QName;)Z
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v10, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    aget-char v3, v17, v10

    invoke-static {v3}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NCNameStart(I)Z

    move-result v17

    if-nez v17, :cond_1

    invoke-static {v3}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v17

    if-nez v17, :cond_6

    const/16 v17, 0x0

    return v17

    :cond_0
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    move/from16 v17, v0

    move/from16 v0, v18

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    :cond_2
    const/4 v5, -0x1

    const/4 v14, 0x0

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v18, v0

    aget-char v3, v17, v18

    invoke-static {v3}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Name(I)Z

    move-result v17

    if-nez v17, :cond_b

    invoke-static {v3}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v17

    if-nez v17, :cond_f

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v17, v0

    sub-int v7, v17, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    move/from16 v18, v0

    add-int v18, v18, v7

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    if-gtz v7, :cond_18

    const/16 v17, 0x0

    return v17

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    int-to-char v0, v3

    move/from16 v18, v0

    const/16 v19, 0x0

    aput-char v18, v17, v19

    const/4 v10, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v17 .. v20}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v9

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v9, v9, v2}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x1

    return v17

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    move/from16 v17, v0

    move/from16 v0, v18

    move/from16 v1, v17

    if-eq v0, v1, :cond_9

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v18, v0

    aget-char v4, v17, v18

    invoke-static {v4}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v17

    if-nez v17, :cond_a

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    const/16 v17, 0x0

    return v17

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    int-to-char v0, v3

    move/from16 v18, v0

    const/16 v19, 0x0

    aput-char v18, v17, v19

    const/4 v10, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    const/16 v17, 0x0

    return v17

    :cond_a
    invoke-static {v3, v4}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NCNameStart(I)Z

    move-result v17

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    move/from16 v17, v0

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    int-to-char v0, v3

    move/from16 v18, v0

    const/16 v19, 0x0

    aput-char v18, v17, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    int-to-char v0, v4

    move/from16 v18, v0

    const/16 v19, 0x1

    aput-char v18, v17, v19

    const/4 v10, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x2

    invoke-virtual/range {v17 .. v20}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v9

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v9, v9, v2}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x1

    return v17

    :cond_b
    const/16 v17, 0x3a

    move/from16 v0, v17

    if-eq v3, v0, :cond_c

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    move/from16 v17, v0

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v17, v0

    sub-int v7, v17, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v7, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v10, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_e

    :goto_5
    const/4 v10, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    move-result v17

    if-nez v17, :cond_4

    goto/16 :goto_1

    :cond_c
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [C

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-static {v0, v10, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    iput-object v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    goto :goto_4

    :cond_e
    sub-int/2addr v5, v10

    goto :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    move/from16 v17, v0

    move/from16 v0, v18

    move/from16 v1, v17

    if-eq v0, v1, :cond_12

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v18, v0

    aget-char v4, v17, v18

    invoke-static {v4}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v17

    if-nez v17, :cond_15

    :cond_11
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v17, v0

    sub-int v7, v17, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v7, v0, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v10, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_6
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_14

    :goto_7
    const/4 v10, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    move-result v17

    if-eqz v17, :cond_10

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_2

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [C

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-static {v0, v10, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    iput-object v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    goto :goto_6

    :cond_14
    sub-int/2addr v5, v10

    goto :goto_7

    :cond_15
    invoke-static {v3, v4}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Name(I)Z

    move-result v17

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    move/from16 v17, v0

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v17, v0

    sub-int v7, v17, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v7, v0, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v10, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_8
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_17

    :goto_9
    const/4 v10, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    move-result v17

    if-nez v17, :cond_4

    goto/16 :goto_1

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [C

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-static {v0, v10, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    iput-object v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    goto :goto_8

    :cond_17
    sub-int/2addr v5, v10

    goto :goto_9

    :cond_18
    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10, v7}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v13

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_19

    move-object v8, v13

    :goto_a
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v8, v13, v1}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x1

    return v17

    :cond_19
    sub-int v12, v5, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10, v12}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v11

    sub-int v17, v7, v12

    add-int/lit8 v6, v17, -0x1

    add-int/lit8 v15, v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    aget-char v17, v17, v15

    invoke-static/range {v17 .. v17}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NCNameStart(I)Z

    move-result v17

    if-eqz v17, :cond_1a

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v18, v0

    add-int/lit8 v19, v5, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v6}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v8

    goto :goto_a

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    aget-char v17, v17, v15

    invoke-static/range {v17 .. v17}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v17

    if-nez v17, :cond_1c

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v17, v0

    const-string/jumbo v18, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v19, "IllegalQName"

    const/16 v20, 0x0

    const/16 v21, 0x2

    invoke-virtual/range {v17 .. v21}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_b

    :cond_1c
    if-nez v14, :cond_1b

    goto :goto_b
.end method

.method public skipChar(I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x85

    const/16 v6, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v2, v3, :cond_2

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v2, v3

    if-eq v0, p1, :cond_3

    if-eq p1, v6, :cond_5

    :cond_0
    :goto_1
    if-eq p1, v6, :cond_8

    :cond_1
    return v4

    :cond_2
    invoke-virtual {p0, v4, v5}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    if-eq p1, v6, :cond_4

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    :goto_2
    return v5

    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v5, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    goto :goto_2

    :cond_5
    const/16 v2, 0x2028

    if-ne v0, v2, :cond_7

    :cond_6
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v5, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    return v5

    :cond_7
    if-eq v0, v7, :cond_6

    goto :goto_1

    :cond_8
    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v2, v3, :cond_a

    :goto_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v1, v2, v4

    if-ne v1, v6, :cond_b

    :cond_9
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    :goto_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v5, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    return v5

    :cond_a
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    int-to-char v3, v0

    int-to-char v3, v3

    aput-char v3, v2, v4

    invoke-virtual {p0, v5, v4}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    goto :goto_3

    :cond_b
    if-eq v1, v7, :cond_9

    goto :goto_4
.end method

.method public skipSpaces()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v10, 0x85

    const/16 v9, 0xd

    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v3, v4, :cond_1

    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v3, v4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_0
    return v6

    :cond_1
    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Space(I)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    const/4 v2, 0x0

    if-ne v0, v8, :cond_7

    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v7, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_8

    :cond_5
    :goto_1
    if-eq v0, v9, :cond_9

    :cond_6
    :goto_2
    if-eqz v2, :cond_a

    :goto_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v3, v4, :cond_b

    :goto_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v3, v4

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Space(I)Z

    move-result v3

    if-nez v3, :cond_3

    return v7

    :cond_7
    if-eq v0, v9, :cond_4

    if-eq v0, v10, :cond_4

    const/16 v3, 0x2028

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    goto :goto_2

    :cond_8
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    int-to-char v4, v0

    int-to-char v4, v4

    aput-char v4, v3, v6

    invoke-virtual {p0, v7, v7}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v6, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v6, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_1

    :cond_9
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v1, v3, v5

    if-eq v1, v8, :cond_6

    if-eq v1, v10, :cond_6

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_2

    :cond_a
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_3

    :cond_b
    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    goto :goto_4

    :cond_c
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v7, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_f

    :cond_d
    :goto_5
    if-eqz v2, :cond_10

    :goto_6
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v3, v4, :cond_11

    :goto_7
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v3, v4

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_e
    const/4 v2, 0x0

    if-eq v0, v8, :cond_c

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    goto :goto_5

    :cond_f
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    int-to-char v4, v0

    int-to-char v4, v4

    aput-char v4, v3, v6

    invoke-virtual {p0, v7, v7}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v6, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v6, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_5

    :cond_10
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_6

    :cond_11
    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    goto :goto_7

    :cond_12
    return v7
.end method

.method public skipString(Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v3, v4, :cond_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v3, v5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v0, v3, :cond_2

    add-int/lit8 v3, v2, -0x1

    if-lt v1, v3, :cond_3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v5, v1, 0x1

    sub-int/2addr v4, v5

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    return v7

    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    add-int/lit8 v6, v1, 0x1

    invoke-static {v3, v4, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3, v7}, Lmf/org/apache/xerces/impl/XML11EntityScanner;->load(IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    add-int/lit8 v5, v1, 0x1

    sub-int/2addr v4, v5

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v5, v1, 0x1

    sub-int/2addr v4, v5

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    return v7

    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11EntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr v4, v2

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    return v8
.end method
