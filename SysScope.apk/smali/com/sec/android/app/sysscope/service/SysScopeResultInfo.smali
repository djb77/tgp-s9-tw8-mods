.class public Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:Ljava/util/Date;

.field private b:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sec/android/app/sysscope/service/h;

    invoke-direct {v0}, Lcom/sec/android/app/sysscope/service/h;-><init>()V

    sput-object v0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->a:Ljava/util/Date;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->a:Ljava/util/Date;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->a(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    const v0, 0x1

    return v0
.end method

.method public a(J)V
    .registers 4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->a:Ljava/util/Date;

    return-void
.end method

.method public a(Landroid/os/Parcel;)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->a(J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v1, :cond_2b

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/sysscope/service/g;->a(I)Lcom/sec/android/app/sysscope/service/g;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sysscope/service/g;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->b:Ljava/util/ArrayList;

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_2b
    return-void
.end method

.method public a(Lcom/sec/android/app/sysscope/service/g;)V
    .registers 3

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public b()I
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    move v0, v1

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sysscope/service/g;

    sget-object v3, Lcom/sec/android/app/sysscope/service/g;->g:Lcom/sec/android/app/sysscope/service/g;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sysscope/service/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    goto :goto_6

    :cond_23
    move v0, v1

    goto :goto_6
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->a:Ljava/util/Date;

    if-nez v0, :cond_c

    const-string v0, ""

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->a:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sysscope/service/g;

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/service/g;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/service/g;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_49

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_49
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    :cond_4f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->a:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sysscope/service/g;

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/service/g;->a()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/service/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_18

    :cond_33
    return-void
.end method
