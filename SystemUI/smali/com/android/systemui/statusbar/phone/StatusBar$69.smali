.class Lcom/android/systemui/statusbar/phone/StatusBar$69;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->onAcvitivyLaunchFreeform(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$intent:Landroid/app/PendingIntent;

.field final synthetic val$notificationKey:Ljava/lang/String;

.field final synthetic val$sbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/service/notification/StatusBarNotification;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$69;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$69;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$69;->val$intent:Landroid/app/PendingIntent;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$69;->val$notificationKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 9

    const/4 v8, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$69;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$69;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap7(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$69;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$69;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isOnlyChildInGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$69;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$69;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getLogicalGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$69;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap7(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v6, v7

    :cond_0
    move-object v5, v6

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$69$1;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$69;->val$intent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$69;->val$notificationKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$69;->val$sbn:Landroid/service/notification/StatusBarNotification;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar$69$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$69;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar$69$1;->start()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$69;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarState;->isKeyguardState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$69;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->instantCollapseNotificationPanel()V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$69;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->visibilityChanged(Z)V

    return v8

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$69;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v8, v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZZ)V

    goto :goto_0
.end method
