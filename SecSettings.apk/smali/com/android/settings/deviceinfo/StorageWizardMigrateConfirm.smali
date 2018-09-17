.class public Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardMigrateConfirm.java"


# instance fields
.field private mEstimate:Lcom/android/settings/deviceinfo/MigrateEstimateTask;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f0d02e8

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->setContentView(I)V

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v3, :cond_15

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->findFirstVolume(I)Landroid/os/storage/VolumeInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    :cond_15
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v1

    if-eqz v1, :cond_23

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v3, :cond_30

    :cond_23
    const-string/jumbo v3, "StorageSettings"

    const-string/jumbo v4, "Missing either source or target volume"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->finish()V

    return-void

    :cond_30
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v1}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->setIllustrationType(I)V

    new-array v3, v6, [Ljava/lang/String;

    aput-object v2, v3, v5

    const v4, 0x7f121ade

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->setHeaderText(I[Ljava/lang/String;)V

    new-array v3, v5, [Ljava/lang/String;

    const v4, 0x7f121152

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->setBodyText(I[Ljava/lang/String;)V

    new-array v3, v6, [Ljava/lang/String;

    aput-object v2, v3, v5

    const v4, 0x7f121adf

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->setSecondaryBodyText(I[Ljava/lang/String;)V

    new-instance v3, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;

    invoke-direct {v3, p0, p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->mEstimate:Lcom/android/settings/deviceinfo/MigrateEstimateTask;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->mEstimate:Lcom/android/settings/deviceinfo/MigrateEstimateTask;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->copyFrom(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->mEstimate:Lcom/android/settings/deviceinfo/MigrateEstimateTask;

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/settings/deviceinfo/MigrateEstimateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getNextButton()Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f121add

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onNavigateNext()V
    .registers 9

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->movePrimaryStorage(Landroid/os/storage/VolumeInfo;)I
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_3e
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_9} :catch_2a

    move-result v3

    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v5, "android.os.storage.extra.VOLUME_ID"

    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "android.content.pm.extra.MOVE_ID"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->finishAffinity()V

    return-void

    :catch_2a
    move-exception v1

    const v5, 0x7f12018a

    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->finishAffinity()V

    return-void

    :catch_3e
    move-exception v0

    const-string/jumbo v5, "storage"

    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getPrimaryStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7b

    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/android/settings/deviceinfo/StorageWizardReady;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v5, "android.os.storage.extra.DISK_ID"

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;->finishAffinity()V

    return-void

    :cond_7b
    throw v0
.end method