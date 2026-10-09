.class final Lnet/blip/android/ui/settings/SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.android.ui.settings.SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1"
    f = "SettingsScreen.kt"
    l = {
        0xb2
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:I

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Lkotlin/jvm/functions/Function2;

.field public final synthetic q:Ljava/lang/String;

.field public final synthetic r:Landroid/content/Context;

.field public final synthetic s:Lkotlin/jvm/functions/Function1;

.field public final synthetic t:Landroidx/compose/runtime/MutableIntState;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableIntState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/ui/settings/SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1;->p:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/android/ui/settings/SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1;->q:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lnet/blip/android/ui/settings/SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1;->r:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lnet/blip/android/ui/settings/SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1;->s:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iput-object p5, p0, Lnet/blip/android/ui/settings/SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1;->t:Landroidx/compose/runtime/MutableIntState;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/ui/settings/SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/ui/settings/SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/ui/settings/SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    new-instance v0, Lnet/blip/android/ui/settings/SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1;

    .line 2
    .line 3
    iget-object v4, p0, Lnet/blip/android/ui/settings/SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1;->s:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iget-object v5, p0, Lnet/blip/android/ui/settings/SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1;->t:Landroidx/compose/runtime/MutableIntState;

    .line 6
    .line 7
    iget-object v1, p0, Lnet/blip/android/ui/settings/SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1;->p:Lkotlin/jvm/functions/Function2;

    .line 8
    .line 9
    iget-object v2, p0, Lnet/blip/android/ui/settings/SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1;->q:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v3, p0, Lnet/blip/android/ui/settings/SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1;->r:Landroid/content/Context;

    .line 12
    .line 13
    move-object v6, p2

    .line 14
    invoke-direct/range {v0 .. v6}, Lnet/blip/android/ui/settings/SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1;-><init>(Lkotlin/jvm/functions/Function2;Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableIntState;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, v0, Lnet/blip/android/ui/settings/SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1;->o:Ljava/lang/Object;

    .line 18
    .line 19
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lnet/blip/android/ui/settings/SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1;->r:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/blip/android/ui/settings/SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1;->o:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 8
    .line 9
    iget v3, p0, Lnet/blip/android/ui/settings/SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1;->n:I

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v3, :cond_1

    .line 13
    .line 14
    if-ne v3, v4, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return-object p0

    .line 27
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Lnet/blip/shared/ContentPicker$Options;

    .line 31
    .line 32
    iget-object v3, p0, Lnet/blip/android/ui/settings/SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1;->q:Ljava/lang/String;

    .line 33
    .line 34
    const/4 v5, 0x5

    .line 35
    sget-object v6, Lnet/blip/shared/ContentPicker$ContentType$Directory;->a:Lnet/blip/shared/ContentPicker$ContentType$Directory;

    .line 36
    .line 37
    invoke-direct {p1, v6, v3, v5}, Lnet/blip/shared/ContentPicker$Options;-><init>(Lnet/blip/shared/ContentPicker$ContentType;Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lnet/blip/android/ui/settings/SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1;->o:Ljava/lang/Object;

    .line 41
    .line 42
    iput v4, p0, Lnet/blip/android/ui/settings/SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1;->n:I

    .line 43
    .line 44
    iget-object v1, p0, Lnet/blip/android/ui/settings/SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1;->p:Lkotlin/jvm/functions/Function2;

    .line 45
    .line 46
    invoke-interface {v1, p1, p0}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-ne p1, v2, :cond_2

    .line 51
    .line 52
    return-object v2

    .line 53
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 54
    .line 55
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->t(Ljava/util/List;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Ljava/lang/String;

    .line 60
    .line 61
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 62
    .line 63
    if-nez p1, :cond_3

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    const/4 v5, 0x3

    .line 75
    invoke-virtual {v3, v2, v5}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v2}, Landroidx/documentfile/provider/DocumentFile;->c(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->e()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-ne v3, v4, :cond_4

    .line 87
    .line 88
    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->a()Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_4

    .line 93
    .line 94
    move-object v3, v1

    .line 95
    goto :goto_2

    .line 96
    :catchall_0
    move-exception v2

    .line 97
    goto :goto_1

    .line 98
    :cond_4
    const-string v2, "The selected folder is not writable"

    .line 99
    .line 100
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 101
    .line 102
    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :goto_1
    new-instance v3, Lkotlin/Result$Failure;

    .line 107
    .line 108
    invoke-direct {v3, v2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    :goto_2
    instance-of v2, v3, Lkotlin/Result$Failure;

    .line 112
    .line 113
    if-nez v2, :cond_5

    .line 114
    .line 115
    move-object v2, v3

    .line 116
    check-cast v2, Lkotlin/Unit;

    .line 117
    .line 118
    iget-object v2, p0, Lnet/blip/android/ui/settings/SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1;->t:Landroidx/compose/runtime/MutableIntState;

    .line 119
    .line 120
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 121
    .line 122
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->j()I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    add-int/2addr v5, v4

    .line 127
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->k(I)V

    .line 128
    .line 129
    .line 130
    new-instance v2, Lnet/blip/libblip/event/TransferSetCustomDefaultSavePath;

    .line 131
    .line 132
    invoke-direct {v2, p1}, Lnet/blip/libblip/event/TransferSetCustomDefaultSavePath;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object p0, p0, Lnet/blip/android/ui/settings/SettingsScreenKt$SettingsScreen$2$1$3$6$1$2$1$1$1;->s:Lkotlin/jvm/functions/Function1;

    .line 136
    .line 137
    invoke-interface {p0, v2}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    :cond_5
    invoke-static {v3}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    if-eqz p0, :cond_6

    .line 145
    .line 146
    sget-object p1, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 147
    .line 148
    new-instance v2, Lkotlin/Pair;

    .line 149
    .line 150
    const-string v3, "err"

    .line 151
    .line 152
    invoke-direct {v2, v3, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    filled-new-array {v2}, [Lkotlin/Pair;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    const-string p1, "persisting receive folder access"

    .line 163
    .line 164
    invoke-static {p1, p0}, Lnet/blip/libblip/Logger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 165
    .line 166
    .line 167
    const-string p0, "Blip couldn\'t write to that folder"

    .line 168
    .line 169
    const/4 p1, 0x0

    .line 170
    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 175
    .line 176
    .line 177
    :cond_6
    :goto_3
    return-object v1
.end method
