.class Lcom/android/server/am/PinnedActivityStack;
.super Lcom/android/server/am/ActivityStack;
.source "PinnedActivityStack.java"

# interfaces
.implements Lcom/android/server/wm/PinnedStackWindowListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/am/ActivityStack",
        "<",
        "Lcom/android/server/wm/PinnedStackWindowController;",
        ">;",
        "Lcom/android/server/wm/PinnedStackWindowListener;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/RecentTasks;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActivityStack;-><init>(Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/RecentTasks;Z)V

    return-void
.end method

.method private skipResizeAnimation(Z)Z
    .registers 6

    const/4 v2, 0x0

    if-nez p1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/PinnedActivityStack;->getParent()Lcom/android/server/am/ConfigurationContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/PinnedActivityStack;->topRunningNonOverlayTaskActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityRecord;->isConfigurationCompatible(Landroid/content/res/Configuration;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    :cond_18
    return v2
.end method


# virtual methods
.method animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V
    .registers 8

    const/4 v1, 0x1

    if-nez p2, :cond_12

    move v0, v1

    :goto_4
    invoke-direct {p0, v0}, Lcom/android/server/am/PinnedActivityStack;->skipResizeAnimation(Z)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/am/PinnedActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, p0, Lcom/android/server/am/PinnedActivityStack;->mStackId:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/ActivityManagerService;->moveTasksToFullscreenStack(IZ)V

    :goto_11
    return-void

    :cond_12
    const/4 v0, 0x0

    goto :goto_4

    :cond_14
    invoke-virtual {p0}, Lcom/android/server/am/PinnedActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PinnedStackWindowController;

    invoke-virtual {v0, p2, p1, p3, p4}, Lcom/android/server/wm/PinnedStackWindowController;->animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    goto :goto_11
.end method

.method createStackWindowController(IZLandroid/graphics/Rect;)Lcom/android/server/wm/PinnedStackWindowController;
    .registers 10

    new-instance v0, Lcom/android/server/wm/PinnedStackWindowController;

    iget v1, p0, Lcom/android/server/am/PinnedActivityStack;->mStackId:I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/PinnedStackWindowController;-><init>(ILcom/android/server/wm/PinnedStackWindowListener;IZLandroid/graphics/Rect;)V

    return-object v0
.end method

.method bridge synthetic createStackWindowController(IZLandroid/graphics/Rect;)Lcom/android/server/wm/StackWindowController;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/PinnedActivityStack;->createStackWindowController(IZLandroid/graphics/Rect;)Lcom/android/server/wm/PinnedStackWindowController;

    move-result-object v0

    return-object v0
.end method

.method deferScheduleMultiWindowModeChanged()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/PinnedActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    check-cast v0, Lcom/android/server/wm/PinnedStackWindowController;

    invoke-virtual {v0}, Lcom/android/server/wm/PinnedStackWindowController;->deferScheduleMultiWindowModeChanged()Z

    move-result v0

    return v0
.end method

.method getDefaultPictureInPictureBounds(F)Landroid/graphics/Rect;
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/am/PinnedActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PinnedStackWindowController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/PinnedStackWindowController;->getPictureInPictureBounds(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method isAnimatingBoundsToFullscreen()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/am/PinnedActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PinnedStackWindowController;

    invoke-virtual {v0}, Lcom/android/server/wm/PinnedStackWindowController;->isAnimatingBoundsToFullscreen()Z

    move-result v0

    return v0
.end method

.method setPictureInPictureActions(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/am/PinnedActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PinnedStackWindowController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PinnedStackWindowController;->setPictureInPictureActions(Ljava/util/List;)V

    return-void
.end method

.method setPictureInPictureAspectRatio(F)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/am/PinnedActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PinnedStackWindowController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PinnedStackWindowController;->setPictureInPictureAspectRatio(F)V

    return-void
.end method

.method public updatePictureInPictureModeForPinnedStackAnimation(Landroid/graphics/Rect;)V
    .registers 8

    iget-object v3, p0, Lcom/android/server/am/PinnedActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/am/PinnedActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_20

    iget-object v4, p0, Lcom/android/server/am/PinnedActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, p1, v5}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;Z)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_25

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_20
    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_25
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method
