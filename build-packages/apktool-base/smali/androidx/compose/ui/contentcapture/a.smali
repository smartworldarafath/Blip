.class public final synthetic Landroidx/compose/ui/contentcapture/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/contentcapture/a;->j:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/compose/ui/contentcapture/a;->j:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->d()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->j:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string v1, "ContentCapture:changeChecker"

    .line 15
    .line 16
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    :try_start_0
    invoke-virtual {v2, v1}, Landroidx/compose/ui/platform/AndroidComposeView;->r(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->t:Landroidx/collection/MutableIntObjectMap;

    .line 24
    .line 25
    iget-object v3, v1, Landroidx/collection/IntObjectMap;->b:[I

    .line 26
    .line 27
    iget-object v1, v1, Landroidx/collection/IntObjectMap;->a:[J

    .line 28
    .line 29
    array-length v4, v1

    .line 30
    add-int/lit8 v4, v4, -0x2

    .line 31
    .line 32
    if-ltz v4, :cond_4

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    :goto_0
    aget-wide v7, v1, v6

    .line 36
    .line 37
    not-long v9, v7

    .line 38
    const/4 v11, 0x7

    .line 39
    shl-long/2addr v9, v11

    .line 40
    and-long/2addr v9, v7

    .line 41
    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    and-long/2addr v9, v11

    .line 47
    cmp-long v9, v9, v11

    .line 48
    .line 49
    if-eqz v9, :cond_3

    .line 50
    .line 51
    sub-int v9, v6, v4

    .line 52
    .line 53
    not-int v9, v9

    .line 54
    ushr-int/lit8 v9, v9, 0x1f

    .line 55
    .line 56
    const/16 v10, 0x8

    .line 57
    .line 58
    rsub-int/lit8 v9, v9, 0x8

    .line 59
    .line 60
    const/4 v11, 0x0

    .line 61
    :goto_1
    if-ge v11, v9, :cond_2

    .line 62
    .line 63
    const-wide/16 v12, 0xff

    .line 64
    .line 65
    and-long/2addr v12, v7

    .line 66
    const-wide/16 v14, 0x80

    .line 67
    .line 68
    cmp-long v12, v12, v14

    .line 69
    .line 70
    if-gez v12, :cond_1

    .line 71
    .line 72
    shl-int/lit8 v12, v6, 0x3

    .line 73
    .line 74
    add-int/2addr v12, v11

    .line 75
    aget v14, v3, v12

    .line 76
    .line 77
    invoke-virtual {v0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->c()Landroidx/collection/IntObjectMap;

    .line 78
    .line 79
    .line 80
    move-result-object v12

    .line 81
    invoke-virtual {v12, v14}, Landroidx/collection/IntObjectMap;->a(I)Z

    .line 82
    .line 83
    .line 84
    move-result v12

    .line 85
    if-nez v12, :cond_1

    .line 86
    .line 87
    iget-object v12, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->m:Ljava/util/ArrayList;

    .line 88
    .line 89
    new-instance v13, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;

    .line 90
    .line 91
    move/from16 v19, v6

    .line 92
    .line 93
    iget-wide v5, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->s:J

    .line 94
    .line 95
    sget-object v17, Landroidx/compose/ui/contentcapture/ContentCaptureEventType;->k:Landroidx/compose/ui/contentcapture/ContentCaptureEventType;

    .line 96
    .line 97
    const/16 v18, 0x0

    .line 98
    .line 99
    move-wide v15, v5

    .line 100
    invoke-direct/range {v13 .. v18}, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;-><init>(IJLandroidx/compose/ui/contentcapture/ContentCaptureEventType;Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    iget-object v5, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->q:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 107
    .line 108
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 109
    .line 110
    invoke-interface {v5, v6}, Lkotlinx/coroutines/channels/SendChannel;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_1
    move/from16 v19, v6

    .line 115
    .line 116
    :goto_2
    shr-long/2addr v7, v10

    .line 117
    add-int/lit8 v11, v11, 0x1

    .line 118
    .line 119
    move/from16 v6, v19

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_2
    move/from16 v19, v6

    .line 123
    .line 124
    if-ne v9, v10, :cond_4

    .line 125
    .line 126
    move/from16 v5, v19

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_3
    move v5, v6

    .line 130
    :goto_3
    if-eq v5, v4, :cond_4

    .line 131
    .line 132
    add-int/lit8 v6, v5, 0x1

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_4
    const-string v1, "ContentCapture:sendAppearEvents"

    .line 136
    .line 137
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    .line 139
    .line 140
    :try_start_1
    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsOwner;->a()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    iget-object v2, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->u:Landroidx/compose/ui/platform/SemanticsNodeCopy;

    .line 149
    .line 150
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->k(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/SemanticsNodeCopy;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    .line 152
    .line 153
    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->c()Landroidx/collection/IntObjectMap;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->b(Landroidx/collection/IntObjectMap;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->o()V

    .line 164
    .line 165
    .line 166
    const/4 v1, 0x0

    .line 167
    iput-boolean v1, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->v:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 168
    .line 169
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :catchall_0
    move-exception v0

    .line 174
    :try_start_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 175
    .line 176
    .line 177
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 178
    :catchall_1
    move-exception v0

    .line 179
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 180
    .line 181
    .line 182
    throw v0
.end method
