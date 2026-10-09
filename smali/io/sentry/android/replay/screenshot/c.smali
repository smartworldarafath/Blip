.class public final synthetic Lio/sentry/android/replay/screenshot/c;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Lio/sentry/android/replay/screenshot/PixelCopyStrategy;

.field public final synthetic k:[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;

.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:Landroid/view/View;

.field public final synthetic o:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;IILandroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/android/replay/screenshot/c;->j:Lio/sentry/android/replay/screenshot/PixelCopyStrategy;

    .line 5
    .line 6
    iput-object p2, p0, Lio/sentry/android/replay/screenshot/c;->k:[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;

    .line 7
    .line 8
    iput p3, p0, Lio/sentry/android/replay/screenshot/c;->l:I

    .line 9
    .line 10
    iput p4, p0, Lio/sentry/android/replay/screenshot/c;->m:I

    .line 11
    .line 12
    iput-object p5, p0, Lio/sentry/android/replay/screenshot/c;->n:Landroid/view/View;

    .line 13
    .line 14
    iput-object p6, p0, Lio/sentry/android/replay/screenshot/c;->o:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lio/sentry/android/replay/screenshot/c;->j:Lio/sentry/android/replay/screenshot/PixelCopyStrategy;

    .line 4
    .line 5
    iget-object v2, v1, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, v0, Lio/sentry/android/replay/screenshot/c;->k:[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-nez v2, :cond_3

    .line 15
    .line 16
    iget-object v2, v1, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->g:Landroid/graphics/Bitmap;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    array-length v2, v3

    .line 27
    move v5, v4

    .line 28
    :goto_0
    if-ge v5, v2, :cond_2

    .line 29
    .line 30
    aget-object v6, v3, v5

    .line 31
    .line 32
    if-eqz v6, :cond_1

    .line 33
    .line 34
    iget-object v7, v6, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;->a:Landroid/graphics/Bitmap;

    .line 35
    .line 36
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    if-nez v8, :cond_1

    .line 41
    .line 42
    iget-object v8, v1, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->n:Lkotlin/Lazy;

    .line 43
    .line 44
    invoke-interface {v8}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    check-cast v8, Landroid/graphics/Canvas;

    .line 49
    .line 50
    iget-object v9, v1, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->m:Lkotlin/Lazy;

    .line 51
    .line 52
    invoke-interface {v9}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    check-cast v9, Landroid/graphics/Paint;

    .line 57
    .line 58
    iget-object v10, v1, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->o:Landroid/graphics/Rect;

    .line 59
    .line 60
    iget-object v11, v1, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->p:Landroid/graphics/RectF;

    .line 61
    .line 62
    iget v12, v6, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;->b:I

    .line 63
    .line 64
    iget v6, v6, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;->c:I

    .line 65
    .line 66
    iget-object v13, v1, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->c:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    .line 67
    .line 68
    iget v14, v13, Lio/sentry/android/replay/ScreenshotRecorderConfig;->c:F

    .line 69
    .line 70
    iget v13, v13, Lio/sentry/android/replay/ScreenshotRecorderConfig;->d:F

    .line 71
    .line 72
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    iget v15, v0, Lio/sentry/android/replay/screenshot/c;->l:I

    .line 85
    .line 86
    sub-int/2addr v12, v15

    .line 87
    int-to-float v12, v12

    .line 88
    mul-float/2addr v12, v14

    .line 89
    iget v15, v0, Lio/sentry/android/replay/screenshot/c;->m:I

    .line 90
    .line 91
    sub-int/2addr v6, v15

    .line 92
    int-to-float v6, v6

    .line 93
    mul-float/2addr v6, v13

    .line 94
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    .line 95
    .line 96
    .line 97
    move-result v15

    .line 98
    move/from16 v16, v2

    .line 99
    .line 100
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-virtual {v10, v4, v4, v15, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    int-to-float v2, v2

    .line 112
    mul-float/2addr v2, v14

    .line 113
    add-float/2addr v2, v12

    .line 114
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    .line 115
    .line 116
    .line 117
    move-result v14

    .line 118
    int-to-float v14, v14

    .line 119
    mul-float/2addr v14, v13

    .line 120
    add-float/2addr v14, v6

    .line 121
    invoke-virtual {v11, v12, v6, v2, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v8, v7, v10, v11, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_1
    move/from16 v16, v2

    .line 132
    .line 133
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 134
    .line 135
    move/from16 v2, v16

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_2
    iget-object v2, v0, Lio/sentry/android/replay/screenshot/c;->n:Landroid/view/View;

    .line 139
    .line 140
    iget-object v0, v0, Lio/sentry/android/replay/screenshot/c;->o:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    .line 141
    .line 142
    invoke-virtual {v1, v2, v0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->d(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_3
    :goto_2
    iget-object v0, v1, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->b:Lio/sentry/SentryOptions;

    .line 147
    .line 148
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 153
    .line 154
    const-string v2, "PixelCopyStrategy is closed, skipping compositing"

    .line 155
    .line 156
    new-array v5, v4, [Ljava/lang/Object;

    .line 157
    .line 158
    invoke-interface {v0, v1, v2, v5}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    array-length v0, v3

    .line 162
    :goto_3
    if-ge v4, v0, :cond_5

    .line 163
    .line 164
    aget-object v1, v3, v4

    .line 165
    .line 166
    if-eqz v1, :cond_4

    .line 167
    .line 168
    iget-object v1, v1, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;->a:Landroid/graphics/Bitmap;

    .line 169
    .line 170
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-nez v2, :cond_4

    .line 175
    .line 176
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 177
    .line 178
    .line 179
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_5
    return-void
.end method
