.class public Lcom/samsung/android/friends/executable/ExecAccessoryMgr;
.super Ljava/lang/Object;
.source "ExecAccessoryMgr.java"

# interfaces
.implements Lcom/samsung/android/friends/action/ActionExecutable;
.implements Lcom/samsung/android/friends/common/Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExecAccessoryMgr"


# instance fields
.field private final mAccessories:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogger:Lcom/samsung/android/friends/common/Logger;

.field private final mSvcOperation:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;


# direct methods
.method public constructor <init>(Lcom/samsung/android/friends/common/Logger;Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mLogger:Lcom/samsung/android/friends/common/Logger;

    iput-object p2, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mSvcOperation:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    return-void
.end method

.method public static getAccessoryKey([B)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHexString([BII)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    add-int v1, p1, p2

    if-eqz p0, :cond_0

    array-length v4, p0

    if-ge v4, v1, :cond_1

    :cond_0
    return-object v6

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v3, p1

    :goto_0
    if-ge v3, v1, :cond_3

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    mul-int/lit8 v5, p2, 0x2

    if-eq v4, v5, :cond_4

    return-object v6

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getLength([B)I
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private handleAccessoryStateChanged(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 12

    const-string/jumbo v6, "attached"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string/jumbo v6, "data"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const-string/jumbo v6, "extraData"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v0, :cond_0

    iget-object v6, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mLogger:Lcom/samsung/android/friends/common/Logger;

    const-string/jumbo v7, "ExecAccessoryMgr"

    const-string/jumbo v8, "wrong parameter %s %d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v2}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->getLength([B)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-static {v7, v8, v9}, Lcom/samsung/android/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/samsung/android/friends/common/Logger;->append(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    return-object v6

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->getAccessoryKey([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v6, "timeStamp"

    invoke-virtual {p2, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v6, "paramInt0"

    invoke-virtual {p2, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v3, :cond_1

    new-instance v6, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;

    const/4 v7, 0x0

    invoke-direct {v6, p1, p2, v7}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;-><init>(ILandroid/os/Bundle;Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;)V

    :goto_0
    invoke-direct {p0, v1, v6}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->update(Ljava/lang/String;Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mLogger:Lcom/samsung/android/friends/common/Logger;

    const-string/jumbo v7, "ExecAccessoryMgr"

    const-string/jumbo v8, "ignored due to failure of updating accessory state: %s %s 0x%x"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-static {v7, v8, v9}, Lcom/samsung/android/friends/util/LogFrs;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v4, v5, v7, v8}, Lcom/samsung/android/friends/common/Logger;->append(JLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    return-object v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mLogger:Lcom/samsung/android/friends/common/Logger;

    const-string/jumbo v7, "ExecAccessoryMgr"

    const-string/jumbo v8, "accessory state changed: %s %s 0x%x"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-static {v7, v8, v9}, Lcom/samsung/android/friends/util/LogFrs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v4, v5, v7, v8}, Lcom/samsung/android/friends/common/Logger;->append(JLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mSvcOperation:Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;

    const v7, 0x210001

    invoke-interface {v6, v7, p2}, Lcom/samsung/android/friends/agentsvc/AgentSvc$SvcOperation;->perform(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    return-object v6
.end method

.method private handleGetAccessoryList()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/friends/executable/-$Lambda$KCYKir_R6H54VcEIP4-6FKFFHsc$1;

    invoke-direct {v3}, Lcom/samsung/android/friends/executable/-$Lambda$KCYKir_R6H54VcEIP4-6FKFFHsc$1;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/friends/executable/-$Lambda$KCYKir_R6H54VcEIP4-6FKFFHsc;

    invoke-direct {v3}, Lcom/samsung/android/friends/executable/-$Lambda$KCYKir_R6H54VcEIP4-6FKFFHsc;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->create()Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v1

    const-string/jumbo v3, "accessoryList"

    invoke-virtual {v1, v3, v0}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private handleHasAccessory(Landroid/os/Bundle;)Z
    .locals 2

    const-string/jumbo v1, "data"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->getAccessoryKey([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->hasAccessory(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isAccessibleAction(I)Z
    .locals 6

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->-get0(Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eq v3, p1, :cond_0

    const/4 v2, 0x0

    :cond_1
    monitor-exit v4

    if-nez v2, :cond_2

    const-string/jumbo v3, "ExecAccessoryMgr"

    const-string/jumbo v4, "action[0x%x] is denied !!!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_2
    return v2

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method static synthetic lambda$-com_samsung_android_friends_executable_ExecAccessoryMgr_4490(Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$-com_samsung_android_friends_executable_ExecAccessoryMgr_4514(Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;)Landroid/os/Bundle;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->-get1(Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private update(Ljava/lang/String;Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;)Z
    .locals 4

    if-nez p1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p2, :cond_2

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    :cond_1
    :goto_0
    monitor-exit v3

    return v1

    :cond_2
    if-eqz v0, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    sparse-switch p3, :sswitch_data_0

    :cond_0
    return-object v5

    :sswitch_0
    const-string/jumbo v0, "ExecAccessoryMgr"

    const-string/jumbo v1, "ActionGetAccessory"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->handleGetAccessoryList()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "ExecAccessoryMgr"

    const-string/jumbo v1, "ActionHasAccessory"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->handleHasAccessory(Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "ExecAccessoryMgr"

    const-string/jumbo v1, "ActionAccessoryStateChanged 0x%x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-direct {p0, p3}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->isAccessibleAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3, p1}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->handleAccessoryStateChanged(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x110001 -> :sswitch_2
        0x120001 -> :sswitch_0
        0x12000a -> :sswitch_2
        0x140001 -> :sswitch_2
        0x140002 -> :sswitch_1
    .end sparse-switch
.end method

.method public executeOnSameThread(I)Z
    .locals 2

    const/4 v0, 0x0

    const v1, 0x140001

    if-eq p1, v1, :cond_0

    const v1, 0x110001

    if-eq p1, v1, :cond_0

    const v1, 0x12000a

    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getAccessoryCount()I
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getDump(Ljava/lang/StringBuilder;)V
    .locals 19

    const-string/jumbo v13, "\n---- active accessory info.\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    monitor-enter v14

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;

    if-eqz v5, :cond_3

    invoke-static {v5}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->-get1(Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;)Landroid/os/Bundle;

    move-result-object v3

    :goto_1
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    const-string/jumbo v13, "timeStamp"

    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    invoke-virtual {v3, v13, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    const-wide/16 v16, -0x1

    cmp-long v13, v10, v16

    if-eqz v13, :cond_4

    invoke-static {v10, v11}, Lcom/samsung/android/friends/util/LogFrs;->getDateString(J)Ljava/lang/String;

    move-result-object v13

    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v15, 0x20

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v2}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->-get0(Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;)I

    move-result v13

    const v15, 0x110001

    if-eq v13, v15, :cond_1

    const-string/jumbo v13, " [0x%x]"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v5}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;->-get0(Lcom/samsung/android/friends/executable/ExecAccessoryMgr$AccessoryData;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-static {v13, v15}, Lcom/samsung/android/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v13, 0x2

    new-array v9, v13, [[B

    const-string/jumbo v13, "data"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v13

    const/4 v15, 0x0

    aput-object v13, v9, v15

    const-string/jumbo v13, "extraData"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v13

    const/4 v15, 0x1

    aput-object v13, v9, v15

    const/4 v13, 0x2

    new-array v12, v13, [Ljava/lang/String;

    const-string/jumbo v13, "\n\tdata: "

    const/4 v15, 0x0

    aput-object v13, v12, v15

    const-string/jumbo v13, "\n\textra: "

    const/4 v15, 0x1

    aput-object v13, v12, v15

    const/4 v8, 0x0

    const/4 v13, 0x0

    array-length v15, v9

    :goto_3
    if-ge v13, v15, :cond_5

    aget-object v4, v9, v13

    if-eqz v4, :cond_2

    array-length v0, v4

    move/from16 v16, v0

    if-lez v16, :cond_2

    aget-object v16, v12, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    array-length v0, v4

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v4, v0, v1}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->getHexString([BII)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_4
    const/16 v13, 0x2d

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    goto/16 :goto_2

    :cond_5
    const/16 v13, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    :cond_6
    monitor-exit v14

    return-void
.end method

.method public hasAccessory(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->mAccessories:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public preExecute(Landroid/os/Bundle;II)Z
    .locals 1

    const/4 v0, 0x1

    sparse-switch p3, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0, p3}, Lcom/samsung/android/friends/executable/ExecAccessoryMgr;->isAccessibleAction(I)Z

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x110001 -> :sswitch_0
        0x12000a -> :sswitch_0
        0x140001 -> :sswitch_0
    .end sparse-switch
.end method
