.class public Lcom/android/settings/core/lifecycle/ObservableDialogFragment;
.super Landroid/app/DialogFragment;
.source "ObservableDialogFragment.java"


# instance fields
.field protected final mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    new-instance v0, Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-direct {v0}, Lcom/android/settings/core/lifecycle/Lifecycle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settings/core/lifecycle/Lifecycle;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/core/lifecycle/Lifecycle;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settings/core/lifecycle/Lifecycle;->onDestroy()V

    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    iget-object v1, p0, Lcom/android/settings/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v1, p1}, Lcom/android/settings/core/lifecycle/Lifecycle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :cond_d
    return v0
.end method

.method public onPause()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settings/core/lifecycle/Lifecycle;->onPause()V

    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settings/core/lifecycle/Lifecycle;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settings/core/lifecycle/Lifecycle;->onResume()V

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settings/core/lifecycle/Lifecycle;->onStart()V

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/android/settings/core/lifecycle/Lifecycle;->onStop()V

    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    return-void
.end method
