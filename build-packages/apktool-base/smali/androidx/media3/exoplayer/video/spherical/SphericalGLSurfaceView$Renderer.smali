.class final Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroidx/media3/exoplayer/video/spherical/TouchTracker$Listener;
.implements Landroidx/media3/exoplayer/video/spherical/OrientationListener$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Renderer"
.end annotation


# instance fields
.field public final j:Landroidx/media3/exoplayer/video/spherical/SceneRenderer;

.field public final k:[F

.field public final l:[F

.field public final m:[F

.field public final n:[F

.field public final o:[F

.field public p:F

.field public q:F

.field public final r:[F

.field public final s:[F

.field public final synthetic t:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;Landroidx/media3/exoplayer/video/spherical/SceneRenderer;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->t:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 5
    .line 6
    const/16 p1, 0x10

    .line 7
    .line 8
    new-array v0, p1, [F

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->k:[F

    .line 11
    .line 12
    new-array v0, p1, [F

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->l:[F

    .line 15
    .line 16
    new-array v0, p1, [F

    .line 17
    .line 18
    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->m:[F

    .line 19
    .line 20
    new-array v1, p1, [F

    .line 21
    .line 22
    iput-object v1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->n:[F

    .line 23
    .line 24
    new-array v2, p1, [F

    .line 25
    .line 26
    iput-object v2, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->o:[F

    .line 27
    .line 28
    new-array v3, p1, [F

    .line 29
    .line 30
    iput-object v3, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->r:[F

    .line 31
    .line 32
    new-array p1, p1, [F

    .line 33
    .line 34
    iput-object p1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->s:[F

    .line 35
    .line 36
    iput-object p2, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->j:Landroidx/media3/exoplayer/video/spherical/SceneRenderer;

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    invoke-static {v0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 43
    .line 44
    .line 45
    invoke-static {v2, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 46
    .line 47
    .line 48
    const p1, 0x40490fdb    # (float)Math.PI

    .line 49
    .line 50
    .line 51
    iput p1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->q:F

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final declared-synchronized a([FF)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->m:[F

    .line 3
    .line 4
    array-length v1, v0

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    .line 8
    .line 9
    neg-float p1, p2

    .line 10
    iput p1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->q:F

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->n:[F

    .line 13
    .line 14
    iget p2, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->p:F

    .line 15
    .line 16
    neg-float v2, p2

    .line 17
    float-to-double p1, p1

    .line 18
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    .line 19
    .line 20
    .line 21
    move-result-wide p1

    .line 22
    double-to-float v3, p1

    .line 23
    iget p1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->q:F

    .line 24
    .line 25
    float-to-double p1, p1

    .line 26
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    .line 27
    .line 28
    .line 29
    move-result-wide p1

    .line 30
    double-to-float v4, p1

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    move-object p1, v0

    .line 40
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw p1
.end method

.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v2, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->s:[F

    .line 5
    .line 6
    iget-object v4, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->m:[F

    .line 7
    .line 8
    iget-object v6, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->o:[F

    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 14
    .line 15
    .line 16
    iget-object v8, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->r:[F

    .line 17
    .line 18
    iget-object v10, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->n:[F

    .line 19
    .line 20
    iget-object v12, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->s:[F

    .line 21
    .line 22
    const/4 v13, 0x0

    .line 23
    const/4 v9, 0x0

    .line 24
    const/4 v11, 0x0

    .line 25
    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 26
    .line 27
    .line 28
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    iget-object v2, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->l:[F

    .line 30
    .line 31
    iget-object v4, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->k:[F

    .line 32
    .line 33
    iget-object v6, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->r:[F

    .line 34
    .line 35
    const/4 v7, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 39
    .line 40
    .line 41
    iget-object v2, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->j:Landroidx/media3/exoplayer/video/spherical/SceneRenderer;

    .line 42
    .line 43
    iget-object v5, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->l:[F

    .line 44
    .line 45
    const/16 v0, 0x4000

    .line 46
    .line 47
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 48
    .line 49
    .line 50
    :try_start_1
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->a()V
    :try_end_1
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const-string v1, "SceneRenderer"

    .line 56
    .line 57
    const-string v3, "Failed to draw a frame"

    .line 58
    .line 59
    invoke-static {v1, v3, v0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    iget-object v0, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    .line 64
    const/4 v1, 0x1

    .line 65
    const/4 v9, 0x0

    .line 66
    invoke-virtual {v0, v1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/4 v10, 0x2

    .line 71
    if-eqz v0, :cond_7

    .line 72
    .line 73
    iget-object v0, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->s:Landroid/graphics/SurfaceTexture;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 79
    .line 80
    .line 81
    :try_start_2
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->a()V
    :try_end_2
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_2 .. :try_end_2} :catch_1

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catch_1
    move-exception v0

    .line 86
    const-string v3, "SceneRenderer"

    .line 87
    .line 88
    const-string v4, "Failed to draw a frame"

    .line 89
    .line 90
    invoke-static {v3, v4, v0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    :goto_1
    iget-object v0, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    .line 95
    invoke-virtual {v0, v1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_0

    .line 100
    .line 101
    iget-object v0, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->p:[F

    .line 102
    .line 103
    invoke-static {v0, v9}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 104
    .line 105
    .line 106
    :cond_0
    iget-object v0, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->s:Landroid/graphics/SurfaceTexture;

    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    .line 109
    .line 110
    .line 111
    move-result-wide v3

    .line 112
    iget-object v6, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->n:Landroidx/media3/common/util/TimedValueQueue;

    .line 113
    .line 114
    monitor-enter v6

    .line 115
    :try_start_3
    invoke-virtual {v6, v3, v4, v9}, Landroidx/media3/common/util/TimedValueQueue;->d(JZ)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    monitor-exit v6

    .line 120
    check-cast v0, Ljava/lang/Long;

    .line 121
    .line 122
    if-eqz v0, :cond_4

    .line 123
    .line 124
    iget-object v6, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->m:Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;

    .line 125
    .line 126
    iget-object v11, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->p:[F

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 129
    .line 130
    .line 131
    move-result-wide v7

    .line 132
    iget-object v0, v6, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->c:Landroidx/media3/common/util/TimedValueQueue;

    .line 133
    .line 134
    invoke-virtual {v0, v7, v8}, Landroidx/media3/common/util/TimedValueQueue;->f(J)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, [F

    .line 139
    .line 140
    if-nez v0, :cond_1

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_1
    iget-object v12, v6, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->b:[F

    .line 144
    .line 145
    aget v7, v0, v9

    .line 146
    .line 147
    aget v8, v0, v1

    .line 148
    .line 149
    neg-float v8, v8

    .line 150
    aget v0, v0, v10

    .line 151
    .line 152
    neg-float v0, v0

    .line 153
    invoke-static {v7, v8, v0}, Landroid/opengl/Matrix;->length(FFF)F

    .line 154
    .line 155
    .line 156
    move-result v13

    .line 157
    const/4 v14, 0x0

    .line 158
    cmpl-float v14, v13, v14

    .line 159
    .line 160
    if-eqz v14, :cond_2

    .line 161
    .line 162
    float-to-double v14, v13

    .line 163
    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    .line 164
    .line 165
    .line 166
    move-result-wide v14

    .line 167
    double-to-float v14, v14

    .line 168
    div-float v15, v7, v13

    .line 169
    .line 170
    div-float v16, v8, v13

    .line 171
    .line 172
    div-float v17, v0, v13

    .line 173
    .line 174
    const/4 v13, 0x0

    .line 175
    invoke-static/range {v12 .. v17}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_2
    invoke-static {v12, v9}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 180
    .line 181
    .line 182
    :goto_2
    iget-boolean v0, v6, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->d:Z

    .line 183
    .line 184
    if-nez v0, :cond_3

    .line 185
    .line 186
    iget-object v0, v6, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->a:[F

    .line 187
    .line 188
    iget-object v7, v6, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->b:[F

    .line 189
    .line 190
    invoke-static {v0, v7}, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->a([F[F)V

    .line 191
    .line 192
    .line 193
    iput-boolean v1, v6, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->d:Z

    .line 194
    .line 195
    :cond_3
    iget-object v13, v6, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->a:[F

    .line 196
    .line 197
    iget-object v15, v6, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->b:[F

    .line 198
    .line 199
    const/16 v16, 0x0

    .line 200
    .line 201
    const/4 v12, 0x0

    .line 202
    const/4 v14, 0x0

    .line 203
    invoke-static/range {v11 .. v16}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 204
    .line 205
    .line 206
    :cond_4
    :goto_3
    iget-object v0, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->o:Landroidx/media3/common/util/TimedValueQueue;

    .line 207
    .line 208
    invoke-virtual {v0, v3, v4}, Landroidx/media3/common/util/TimedValueQueue;->f(J)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    check-cast v0, Landroidx/media3/exoplayer/video/spherical/Projection;

    .line 213
    .line 214
    if-eqz v0, :cond_7

    .line 215
    .line 216
    iget-object v3, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->l:Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;

    .line 217
    .line 218
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    invoke-static {v0}, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->b(Landroidx/media3/exoplayer/video/spherical/Projection;)Z

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    if-nez v4, :cond_5

    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_5
    iget v4, v0, Landroidx/media3/exoplayer/video/spherical/Projection;->c:I

    .line 229
    .line 230
    iput v4, v3, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->a:I

    .line 231
    .line 232
    new-instance v4, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;

    .line 233
    .line 234
    iget-object v6, v0, Landroidx/media3/exoplayer/video/spherical/Projection;->a:Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    .line 235
    .line 236
    iget-object v6, v6, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;->a:[Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;

    .line 237
    .line 238
    aget-object v6, v6, v9

    .line 239
    .line 240
    invoke-direct {v4, v6}, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;-><init>(Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;)V

    .line 241
    .line 242
    .line 243
    iput-object v4, v3, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->b:Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;

    .line 244
    .line 245
    iget-boolean v3, v0, Landroidx/media3/exoplayer/video/spherical/Projection;->d:Z

    .line 246
    .line 247
    if-eqz v3, :cond_6

    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_6
    new-instance v3, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;

    .line 251
    .line 252
    iget-object v0, v0, Landroidx/media3/exoplayer/video/spherical/Projection;->b:Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    .line 253
    .line 254
    iget-object v0, v0, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;->a:[Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;

    .line 255
    .line 256
    aget-object v0, v0, v9

    .line 257
    .line 258
    invoke-direct {v3, v0}, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;-><init>(Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;)V

    .line 259
    .line 260
    .line 261
    goto :goto_4

    .line 262
    :catchall_0
    move-exception v0

    .line 263
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 264
    throw v0

    .line 265
    :cond_7
    :goto_4
    iget-object v3, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->q:[F

    .line 266
    .line 267
    iget-object v7, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->p:[F

    .line 268
    .line 269
    const/4 v8, 0x0

    .line 270
    const/4 v4, 0x0

    .line 271
    const/4 v6, 0x0

    .line 272
    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 273
    .line 274
    .line 275
    iget-object v3, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->l:Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;

    .line 276
    .line 277
    iget v0, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->r:I

    .line 278
    .line 279
    iget-object v2, v2, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->q:[F

    .line 280
    .line 281
    const-string v4, "ProjectionRenderer"

    .line 282
    .line 283
    iget-object v5, v3, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->b:Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;

    .line 284
    .line 285
    if-nez v5, :cond_8

    .line 286
    .line 287
    goto/16 :goto_9

    .line 288
    .line 289
    :cond_8
    iget v6, v3, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->a:I

    .line 290
    .line 291
    if-ne v6, v1, :cond_9

    .line 292
    .line 293
    sget-object v6, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->j:[F

    .line 294
    .line 295
    goto :goto_5

    .line 296
    :cond_9
    if-ne v6, v10, :cond_a

    .line 297
    .line 298
    sget-object v6, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->k:[F

    .line 299
    .line 300
    goto :goto_5

    .line 301
    :cond_a
    sget-object v6, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->i:[F

    .line 302
    .line 303
    :goto_5
    iget v7, v3, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->e:I

    .line 304
    .line 305
    invoke-static {v7, v1, v9, v6, v9}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 306
    .line 307
    .line 308
    iget v6, v3, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->d:I

    .line 309
    .line 310
    invoke-static {v6, v1, v9, v2, v9}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 311
    .line 312
    .line 313
    const v1, 0x84c0

    .line 314
    .line 315
    .line 316
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 317
    .line 318
    .line 319
    const v1, 0x8d65

    .line 320
    .line 321
    .line 322
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 323
    .line 324
    .line 325
    iget v0, v3, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->h:I

    .line 326
    .line 327
    invoke-static {v0, v9}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 328
    .line 329
    .line 330
    :try_start_5
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->a()V
    :try_end_5
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_5 .. :try_end_5} :catch_2

    .line 331
    .line 332
    .line 333
    goto :goto_6

    .line 334
    :catch_2
    move-exception v0

    .line 335
    const-string v1, "Failed to bind uniforms"

    .line 336
    .line 337
    invoke-static {v4, v1, v0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 338
    .line 339
    .line 340
    :goto_6
    iget v10, v3, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->f:I

    .line 341
    .line 342
    const/16 v14, 0xc

    .line 343
    .line 344
    iget-object v15, v5, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;->b:Ljava/nio/FloatBuffer;

    .line 345
    .line 346
    const/4 v11, 0x3

    .line 347
    const/16 v12, 0x1406

    .line 348
    .line 349
    const/4 v13, 0x0

    .line 350
    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 351
    .line 352
    .line 353
    :try_start_6
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->a()V
    :try_end_6
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_6 .. :try_end_6} :catch_3

    .line 354
    .line 355
    .line 356
    goto :goto_7

    .line 357
    :catch_3
    move-exception v0

    .line 358
    const-string v1, "Failed to load position data"

    .line 359
    .line 360
    invoke-static {v4, v1, v0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 361
    .line 362
    .line 363
    :goto_7
    iget v10, v3, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->g:I

    .line 364
    .line 365
    const/16 v14, 0x8

    .line 366
    .line 367
    iget-object v15, v5, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;->c:Ljava/nio/FloatBuffer;

    .line 368
    .line 369
    const/4 v11, 0x2

    .line 370
    const/16 v12, 0x1406

    .line 371
    .line 372
    const/4 v13, 0x0

    .line 373
    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 374
    .line 375
    .line 376
    :try_start_7
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->a()V
    :try_end_7
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_7 .. :try_end_7} :catch_4

    .line 377
    .line 378
    .line 379
    goto :goto_8

    .line 380
    :catch_4
    move-exception v0

    .line 381
    const-string v1, "Failed to load texture data"

    .line 382
    .line 383
    invoke-static {v4, v1, v0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 384
    .line 385
    .line 386
    :goto_8
    iget v0, v5, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;->d:I

    .line 387
    .line 388
    iget v1, v5, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;->a:I

    .line 389
    .line 390
    invoke-static {v0, v9, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 391
    .line 392
    .line 393
    :try_start_8
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->a()V
    :try_end_8
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_8 .. :try_end_8} :catch_5

    .line 394
    .line 395
    .line 396
    goto :goto_9

    .line 397
    :catch_5
    move-exception v0

    .line 398
    const-string v1, "Failed to render"

    .line 399
    .line 400
    invoke-static {v4, v1, v0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 401
    .line 402
    .line 403
    :goto_9
    return-void

    .line 404
    :catchall_1
    move-exception v0

    .line 405
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 406
    throw v0
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 3
    .line 4
    .line 5
    int-to-float p1, p2

    .line 6
    int-to-float p2, p3

    .line 7
    div-float v3, p1, p2

    .line 8
    .line 9
    const/high16 p1, 0x3f800000    # 1.0f

    .line 10
    .line 11
    cmpl-float p1, v3, p1

    .line 12
    .line 13
    if-lez p1, :cond_0

    .line 14
    .line 15
    const-wide p1, 0x4046800000000000L    # 45.0

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    .line 25
    .line 26
    .line 27
    move-result-wide p1

    .line 28
    float-to-double v0, v3

    .line 29
    div-double/2addr p1, v0

    .line 30
    invoke-static {p1, p2}, Ljava/lang/Math;->atan(D)D

    .line 31
    .line 32
    .line 33
    move-result-wide p1

    .line 34
    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    .line 35
    .line 36
    .line 37
    move-result-wide p1

    .line 38
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 39
    .line 40
    mul-double/2addr p1, v0

    .line 41
    double-to-float p1, p1

    .line 42
    :goto_0
    move v2, p1

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    const/high16 p1, 0x42b40000    # 90.0f

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :goto_1
    const v4, 0x3dcccccd    # 0.1f

    .line 48
    .line 49
    .line 50
    const/high16 v5, 0x42c80000    # 100.0f

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->k:[F

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final declared-synchronized onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->t:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 3
    .line 4
    iget-object p2, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->j:Landroidx/media3/exoplayer/video/spherical/SceneRenderer;

    .line 5
    .line 6
    invoke-virtual {p2}, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->a()Landroid/graphics/SurfaceTexture;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iget-object v0, p1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->n:Landroid/os/Handler;

    .line 11
    .line 12
    new-instance v1, Lf3;

    .line 13
    .line 14
    const/16 v2, 0x13

    .line 15
    .line 16
    invoke-direct {v1, v2, p1, p2}, Lf3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p1
.end method
