.class public Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;
.super Ljava/lang/Object;


# static fields
.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;


# instance fields
.field private s:Landroid/content/Context;

.field private t:Landroid/content/BroadcastReceiver;

.field private u:Ljava/lang/String;

.field private v:Lcom/samsung/context/sdk/samsunganalytics/a/a;

.field private w:Z

.field private x:Z

.field private y:Lcom/sec/spp/push/dlc/api/IDlcService;

.field private z:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "com.sec.spp.push"

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->c:Ljava/lang/String;

    const-string/jumbo v0, "com.sec.spp.push.dlc.writer.WriterService"

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->w:Z

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->x:Z

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a$1;

    invoke-direct {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->z:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->s:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->u:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".REGISTER_FILTER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->u:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/a/a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->v:Lcom/samsung/context/sdk/samsunganalytics/a/a;

    return-void
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;)Landroid/content/BroadcastReceiver;
    .registers 2

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->t:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .registers 2

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->t:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;Lcom/sec/spp/push/dlc/api/IDlcService;)Lcom/sec/spp/push/dlc/api/IDlcService;
    .registers 2

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->y:Lcom/sec/spp/push/dlc/api/IDlcService;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    iget-boolean v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->w:Z

    if-nez v1, :cond_25

    :goto_4
    :try_start_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->c:Ljava/lang/String;

    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->s:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->z:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->w:Z

    const-string/jumbo v1, "DLCBinder"

    const-string/jumbo v2, "bind"

    invoke-static {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_24} :catch_29

    :goto_24
    return-void

    :cond_25
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->e()V

    goto :goto_4

    :catch_29
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/Class;Ljava/lang/Exception;)V

    goto :goto_24
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->w:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->s:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->x:Z

    return p1
.end method

.method static synthetic c(Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;)Lcom/samsung/context/sdk/samsunganalytics/a/a;
    .registers 2

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->v:Lcom/samsung/context/sdk/samsunganalytics/a/a;

    return-object v0
.end method

.method static synthetic d(Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->u:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .registers 4

    iget-boolean v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->w:Z

    if-nez v1, :cond_5

    :goto_4
    return-void

    :cond_5
    :try_start_5
    const-string/jumbo v1, "DLCBinder"

    const-string/jumbo v2, "unbind"

    invoke-static {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->s:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->z:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->w:Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_19

    goto :goto_4

    :catch_19
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/Class;Ljava/lang/Exception;)V

    goto :goto_4
.end method


# virtual methods
.method public a()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->t:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_16

    :goto_e
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->s:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_16
    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a$2;

    invoke-direct {v1, p0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a$2;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;)V

    iput-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->t:Landroid/content/BroadcastReceiver;

    goto :goto_e
.end method

.method public b()V
    .registers 4

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->t:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_12

    :goto_4
    iget-boolean v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->x:Z

    if-eqz v1, :cond_16

    const-string/jumbo v1, "DLCBinder"

    const-string/jumbo v2, "already send register request"

    invoke-static {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->a()V

    goto :goto_4

    :cond_16
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.spp.push.REQUEST_REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->s:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "EXTRA_PACKAGENAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->u:Ljava/lang/String;

    const-string/jumbo v2, "EXTRA_INTENTFILTER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->s:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->x:Z

    const-string/jumbo v1, "DLCBinder"

    const-string/jumbo v2, "send register Request"

    invoke-static {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send register Request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->s:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;)V

    goto :goto_11
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->w:Z

    return v0
.end method

.method public d()Lcom/sec/spp/push/dlc/api/IDlcService;
    .registers 2

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->y:Lcom/sec/spp/push/dlc/api/IDlcService;

    return-object v0
.end method
