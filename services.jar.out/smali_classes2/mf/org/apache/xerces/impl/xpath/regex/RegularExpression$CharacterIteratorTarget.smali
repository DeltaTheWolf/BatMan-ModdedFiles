.class final Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;
.super Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;
.source "RegularExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CharacterIteratorTarget"
.end annotation


# instance fields
.field target:Ljava/text/CharacterIterator;


# direct methods
.method constructor <init>(Ljava/text/CharacterIterator;)V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    return-void
.end method

.method private final regionMatches(IIII)Z
    .locals 7

    const/4 v6, 0x0

    move v0, p3

    move v1, v0

    move v3, p4

    move v2, p1

    :goto_0
    add-int/lit8 p4, v3, -0x1

    if-lez v3, :cond_1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    add-int/lit8 p1, v2, 0x1

    invoke-interface {v4, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v4

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    add-int/lit8 v0, v1, 0x1

    invoke-interface {v5, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    move v1, v0

    move v3, p4

    move v2, p1

    goto :goto_0

    :cond_0
    return v6

    :cond_1
    const/4 v4, 0x1

    return v4
.end method

.method private final regionMatches(IILjava/lang/String;I)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    move v1, v0

    move v3, p4

    move v2, p1

    :goto_0
    add-int/lit8 p4, v3, -0x1

    if-lez v3, :cond_1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    add-int/lit8 p1, v2, 0x1

    invoke-interface {v4, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v4

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    move v1, v0

    move v3, p4

    move v2, p1

    goto :goto_0

    :cond_0
    return v6

    :cond_1
    const/4 v4, 0x1

    return v4
.end method

.method private final regionMatchesIgnoreCase(IIII)Z
    .locals 11

    const/4 v10, 0x0

    move v2, p3

    move v3, v2

    move v5, p4

    move v4, p1

    :goto_0
    add-int/lit8 p4, v5, -0x1

    if-lez v5, :cond_3

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    add-int/lit8 p1, v4, 0x1

    invoke-interface {v8, v4}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v0

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    add-int/lit8 v2, v3, 0x1

    invoke-interface {v8, v3}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    if-eq v6, v7, :cond_1

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    if-ne v8, v9, :cond_2

    move v3, v2

    move v5, p4

    move v4, p1

    goto :goto_0

    :cond_0
    move v3, v2

    move v5, p4

    move v4, p1

    goto :goto_0

    :cond_1
    move v3, v2

    move v5, p4

    move v4, p1

    goto :goto_0

    :cond_2
    return v10

    :cond_3
    const/4 v8, 0x1

    return v8
.end method

.method private final regionMatchesIgnoreCase(IILjava/lang/String;I)Z
    .locals 11

    const/4 v10, 0x0

    const/4 v2, 0x0

    move v3, v2

    move v5, p4

    move v4, p1

    :goto_0
    add-int/lit8 p4, v5, -0x1

    if-lez v5, :cond_3

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    add-int/lit8 p1, v4, 0x1

    invoke-interface {v8, v4}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v0

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    if-eq v6, v7, :cond_1

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    if-ne v8, v9, :cond_2

    move v3, v2

    move v5, p4

    move v4, p1

    goto :goto_0

    :cond_0
    move v3, v2

    move v5, p4

    move v4, p1

    goto :goto_0

    :cond_1
    move v3, v2

    move v5, p4

    move v4, p1

    goto :goto_0

    :cond_2
    return v10

    :cond_3
    const/4 v8, 0x1

    return v8
.end method


# virtual methods
.method final charAt(I)C
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    invoke-interface {v0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v0

    return v0
.end method

.method final regionMatches(ZIIII)Z
    .locals 2

    const/4 v1, 0x0

    if-gez p2, :cond_1

    :cond_0
    return v1

    :cond_1
    sub-int v0, p3, p2

    if-lt v0, p5, :cond_0

    if-nez p1, :cond_2

    invoke-direct {p0, p2, p3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->regionMatches(IIII)Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    invoke-direct {p0, p2, p3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->regionMatchesIgnoreCase(IIII)Z

    move-result v0

    goto :goto_0
.end method

.method final regionMatches(ZIILjava/lang/String;I)Z
    .locals 2

    const/4 v1, 0x0

    if-gez p2, :cond_1

    :cond_0
    return v1

    :cond_1
    sub-int v0, p3, p2

    if-lt v0, p5, :cond_0

    if-nez p1, :cond_2

    invoke-direct {p0, p2, p3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->regionMatches(IILjava/lang/String;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    invoke-direct {p0, p2, p3, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->regionMatchesIgnoreCase(IILjava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method final resetTarget(Ljava/text/CharacterIterator;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;->target:Ljava/text/CharacterIterator;

    return-void
.end method
