.class public final synthetic Lt8;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroid/content/Context;

.field public final synthetic l:Ljava/util/List;

.field public final synthetic m:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic n:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/List;Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 1
    iput p5, p0, Lt8;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lt8;->k:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p2, p0, Lt8;->l:Ljava/util/List;

    .line 6
    .line 7
    iput-object p3, p0, Lt8;->m:Landroidx/compose/foundation/pager/PagerState;

    .line 8
    .line 9
    iput-object p4, p0, Lt8;->n:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lt8;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lt8;->n:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    iget-object v3, p0, Lt8;->m:Landroidx/compose/foundation/pager/PagerState;

    .line 8
    .line 9
    iget-object v4, p0, Lt8;->l:Ljava/util/List;

    .line 10
    .line 11
    iget-object p0, p0, Lt8;->k:Landroid/content/Context;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    iget-object v0, v3, Landroidx/compose/foundation/pager/PagerState;->d:Landroidx/compose/foundation/pager/PagerScrollPosition;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerScrollPosition;->a()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/net/Uri;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Landroidx/core/net/UriKt;->a(Landroid/net/Uri;)Ljava/io/File;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {p0, v3}, Lnet/blip/android/intents/OutboundIntent;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-nez v3, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v4, Landroid/content/Intent;

    .line 54
    .line 55
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v5, "android.intent.action.SEND"

    .line 59
    .line 60
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    const-string v5, "android.intent.extra.STREAM"

    .line 64
    .line 65
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    const/4 v3, 0x1

    .line 69
    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    if-nez v0, :cond_1

    .line 73
    .line 74
    const-string v0, "*/*"

    .line 75
    .line 76
    :cond_1
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    invoke-static {v4, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    return-object v1

    .line 91
    :pswitch_0
    iget-object v0, v3, Landroidx/compose/foundation/pager/PagerState;->d:Landroidx/compose/foundation/pager/PagerScrollPosition;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerScrollPosition;->a()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Landroid/net/Uri;

    .line 102
    .line 103
    invoke-static {p0, v0}, Lnet/blip/android/intents/OutboundIntent;->b(Landroid/content/Context;Landroid/net/Uri;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    return-object v1

    .line 110
    nop

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
