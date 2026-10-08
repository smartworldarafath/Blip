.class public final synthetic Lb4;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/media3/common/util/BackgroundThreadStateHandler;

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/util/BackgroundThreadStateHandler;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lb4;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lb4;->k:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    .line 4
    .line 5
    iput-object p2, p0, Lb4;->l:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lb4;->j:I

    .line 2
    .line 3
    iget-object v1, p0, Lb4;->l:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lb4;->k:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->f:I

    .line 11
    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    iput v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->f:I

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->d:Ljava/lang/Object;

    .line 19
    .line 20
    iput-object v1, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->d:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->c:Landroidx/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;

    .line 29
    .line 30
    invoke-interface {p0, v0, v1}, Landroidx/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void

    .line 34
    :pswitch_0
    iget v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->f:I

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->d:Ljava/lang/Object;

    .line 39
    .line 40
    iput-object v1, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->d:Ljava/lang/Object;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    iget-object p0, p0, Landroidx/media3/common/util/BackgroundThreadStateHandler;->c:Landroidx/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;

    .line 49
    .line 50
    invoke-interface {p0, v0, v1}, Landroidx/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
