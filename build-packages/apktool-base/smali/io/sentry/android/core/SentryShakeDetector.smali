.class public final Lio/sentry/android/core/SentryShakeDetector;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/SentryShakeDetector$SampleQueue;,
        Lio/sentry/android/core/SentryShakeDetector$Listener;,
        Lio/sentry/android/core/SentryShakeDetector$SamplePool;,
        Lio/sentry/android/core/SentryShakeDetector$Sample;
    }
.end annotation


# instance fields
.field public a:Landroid/hardware/SensorManager;

.field public b:Landroid/hardware/Sensor;

.field public c:Landroid/os/HandlerThread;

.field public d:Landroid/os/Handler;

.field public volatile e:Lio/sentry/android/core/SentryShakeDetector$Listener;

.field public f:Lio/sentry/ILogger;

.field public final g:Lio/sentry/android/core/SentryShakeDetector$SampleQueue;


# direct methods
.method public constructor <init>(Lio/sentry/ILogger;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->g:Lio/sentry/android/core/SentryShakeDetector$SampleQueue;

    .line 10
    .line 11
    iput-object p1, p0, Lio/sentry/android/core/SentryShakeDetector;->f:Lio/sentry/ILogger;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->a:Landroid/hardware/SensorManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "sensor"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/hardware/SensorManager;

    .line 12
    .line 13
    iput-object p1, p0, Lio/sentry/android/core/SentryShakeDetector;->a:Landroid/hardware/SensorManager;

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lio/sentry/android/core/SentryShakeDetector;->a:Landroid/hardware/SensorManager;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->b:Landroid/hardware/Sensor;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lio/sentry/android/core/SentryShakeDetector;->b:Landroid/hardware/Sensor;

    .line 30
    .line 31
    :cond_1
    iget-object p1, p0, Lio/sentry/android/core/SentryShakeDetector;->b:Landroid/hardware/Sensor;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iget-object p1, p0, Lio/sentry/android/core/SentryShakeDetector;->c:Landroid/os/HandlerThread;

    .line 36
    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    new-instance p1, Landroid/os/HandlerThread;

    .line 40
    .line 41
    const-string v0, "sentry-shake"

    .line 42
    .line 43
    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lio/sentry/android/core/SentryShakeDetector;->c:Landroid/os/HandlerThread;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 49
    .line 50
    .line 51
    new-instance p1, Landroid/os/Handler;

    .line 52
    .line 53
    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->c:Landroid/os/HandlerThread;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lio/sentry/android/core/SentryShakeDetector;->d:Landroid/os/Handler;

    .line 63
    .line 64
    :cond_2
    return-void
.end method

.method public final b(Landroid/app/Activity;Lio/sentry/android/core/SentryShakeDetector$Listener;)V
    .locals 2

    .line 1
    iput-object p2, p0, Lio/sentry/android/core/SentryShakeDetector;->e:Lio/sentry/android/core/SentryShakeDetector$Listener;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/sentry/android/core/SentryShakeDetector;->a(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lio/sentry/android/core/SentryShakeDetector;->a:Landroid/hardware/SensorManager;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lio/sentry/android/core/SentryShakeDetector;->f:Lio/sentry/ILogger;

    .line 12
    .line 13
    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 14
    .line 15
    const-string v0, "SensorManager is not available. Shake detection disabled."

    .line 16
    .line 17
    new-array p2, p2, [Ljava/lang/Object;

    .line 18
    .line 19
    invoke-interface {p0, p1, v0, p2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->b:Landroid/hardware/Sensor;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object p0, p0, Lio/sentry/android/core/SentryShakeDetector;->f:Lio/sentry/ILogger;

    .line 28
    .line 29
    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 30
    .line 31
    const-string v0, "Accelerometer sensor not available. Shake detection disabled."

    .line 32
    .line 33
    new-array p2, p2, [Ljava/lang/Object;

    .line 34
    .line 35
    invoke-interface {p0, p1, v0, p2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    const/4 p2, 0x3

    .line 40
    iget-object v1, p0, Lio/sentry/android/core/SentryShakeDetector;->d:Landroid/os/Handler;

    .line 41
    .line 42
    invoke-virtual {p1, p0, v0, p2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->e:Lio/sentry/android/core/SentryShakeDetector$Listener;

    .line 3
    .line 4
    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->a:Landroid/hardware/SensorManager;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->d:Landroid/os/Handler;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    new-instance v1, Lio/sentry/android/core/b;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {v1, v2, p0}, Lio/sentry/android/core/b;-><init>(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eq v2, v3, :cond_0

    .line 13
    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :cond_0
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    aget v5, v2, v4

    .line 20
    .line 21
    aget v6, v2, v3

    .line 22
    .line 23
    const/4 v7, 0x2

    .line 24
    aget v2, v2, v7

    .line 25
    .line 26
    mul-float/2addr v5, v5

    .line 27
    mul-float/2addr v6, v6

    .line 28
    add-float/2addr v6, v5

    .line 29
    mul-float/2addr v2, v2

    .line 30
    add-float/2addr v2, v6

    .line 31
    float-to-double v5, v2

    .line 32
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .line 33
    .line 34
    .line 35
    move-result-wide v5

    .line 36
    const-wide/high16 v8, 0x402a000000000000L    # 13.0

    .line 37
    .line 38
    cmpl-double v2, v5, v8

    .line 39
    .line 40
    if-lez v2, :cond_1

    .line 41
    .line 42
    move v2, v3

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move v2, v4

    .line 45
    :goto_0
    iget-object v5, v0, Lio/sentry/android/core/SentryShakeDetector;->g:Lio/sentry/android/core/SentryShakeDetector$SampleQueue;

    .line 46
    .line 47
    iget-wide v8, v1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 48
    .line 49
    iget-object v1, v5, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->a:Lio/sentry/android/core/SentryShakeDetector$SamplePool;

    .line 50
    .line 51
    const-wide/32 v10, 0x1dcd6500

    .line 52
    .line 53
    .line 54
    sub-long v10, v8, v10

    .line 55
    .line 56
    :goto_1
    iget v6, v5, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->d:I

    .line 57
    .line 58
    const/4 v12, 0x0

    .line 59
    const/4 v13, 0x4

    .line 60
    if-lt v6, v13, :cond_4

    .line 61
    .line 62
    iget-object v14, v5, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->b:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 63
    .line 64
    if-eqz v14, :cond_4

    .line 65
    .line 66
    move v15, v3

    .line 67
    iget-wide v3, v14, Lio/sentry/android/core/SentryShakeDetector$Sample;->a:J

    .line 68
    .line 69
    sub-long v3, v10, v3

    .line 70
    .line 71
    const-wide/16 v16, 0x0

    .line 72
    .line 73
    cmp-long v3, v3, v16

    .line 74
    .line 75
    if-lez v3, :cond_5

    .line 76
    .line 77
    iget-boolean v3, v14, Lio/sentry/android/core/SentryShakeDetector$Sample;->b:Z

    .line 78
    .line 79
    if-eqz v3, :cond_2

    .line 80
    .line 81
    iget v3, v5, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->e:I

    .line 82
    .line 83
    sub-int/2addr v3, v15

    .line 84
    iput v3, v5, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->e:I

    .line 85
    .line 86
    :cond_2
    add-int/lit8 v6, v6, -0x1

    .line 87
    .line 88
    iput v6, v5, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->d:I

    .line 89
    .line 90
    iget-object v3, v14, Lio/sentry/android/core/SentryShakeDetector$Sample;->c:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 91
    .line 92
    iput-object v3, v5, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->b:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 93
    .line 94
    if-nez v3, :cond_3

    .line 95
    .line 96
    iput-object v12, v5, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->c:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 97
    .line 98
    :cond_3
    iget-object v3, v1, Lio/sentry/android/core/SentryShakeDetector$SamplePool;->a:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 99
    .line 100
    iput-object v3, v14, Lio/sentry/android/core/SentryShakeDetector$Sample;->c:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 101
    .line 102
    iput-object v14, v1, Lio/sentry/android/core/SentryShakeDetector$SamplePool;->a:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 103
    .line 104
    move v3, v15

    .line 105
    const/4 v4, 0x0

    .line 106
    goto :goto_1

    .line 107
    :cond_4
    move v15, v3

    .line 108
    :cond_5
    iget-object v3, v1, Lio/sentry/android/core/SentryShakeDetector$SamplePool;->a:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 109
    .line 110
    if-nez v3, :cond_6

    .line 111
    .line 112
    new-instance v3, Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 113
    .line 114
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_6
    iget-object v4, v3, Lio/sentry/android/core/SentryShakeDetector$Sample;->c:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 119
    .line 120
    iput-object v4, v1, Lio/sentry/android/core/SentryShakeDetector$SamplePool;->a:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 121
    .line 122
    :goto_2
    iput-wide v8, v3, Lio/sentry/android/core/SentryShakeDetector$Sample;->a:J

    .line 123
    .line 124
    iput-boolean v2, v3, Lio/sentry/android/core/SentryShakeDetector$Sample;->b:Z

    .line 125
    .line 126
    iput-object v12, v3, Lio/sentry/android/core/SentryShakeDetector$Sample;->c:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 127
    .line 128
    iget-object v1, v5, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->c:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 129
    .line 130
    if-eqz v1, :cond_7

    .line 131
    .line 132
    iput-object v3, v1, Lio/sentry/android/core/SentryShakeDetector$Sample;->c:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 133
    .line 134
    :cond_7
    iput-object v3, v5, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->c:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 135
    .line 136
    iget-object v1, v5, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->b:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 137
    .line 138
    if-nez v1, :cond_8

    .line 139
    .line 140
    iput-object v3, v5, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->b:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 141
    .line 142
    :cond_8
    add-int/2addr v6, v15

    .line 143
    iput v6, v5, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->d:I

    .line 144
    .line 145
    if-eqz v2, :cond_9

    .line 146
    .line 147
    iget v1, v5, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->e:I

    .line 148
    .line 149
    add-int/2addr v1, v15

    .line 150
    iput v1, v5, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->e:I

    .line 151
    .line 152
    :cond_9
    iget-object v1, v0, Lio/sentry/android/core/SentryShakeDetector;->g:Lio/sentry/android/core/SentryShakeDetector$SampleQueue;

    .line 153
    .line 154
    iget-object v2, v1, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->c:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 155
    .line 156
    if-eqz v2, :cond_b

    .line 157
    .line 158
    iget-object v3, v1, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->b:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 159
    .line 160
    if-eqz v3, :cond_b

    .line 161
    .line 162
    iget v4, v1, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->d:I

    .line 163
    .line 164
    if-lt v4, v13, :cond_b

    .line 165
    .line 166
    iget-wide v5, v2, Lio/sentry/android/core/SentryShakeDetector$Sample;->a:J

    .line 167
    .line 168
    iget-wide v2, v3, Lio/sentry/android/core/SentryShakeDetector$Sample;->a:J

    .line 169
    .line 170
    sub-long/2addr v5, v2

    .line 171
    const-wide/32 v2, 0xee6b280

    .line 172
    .line 173
    .line 174
    cmp-long v2, v5, v2

    .line 175
    .line 176
    if-ltz v2, :cond_b

    .line 177
    .line 178
    iget v2, v1, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->e:I

    .line 179
    .line 180
    shr-int/lit8 v3, v4, 0x1

    .line 181
    .line 182
    shr-int/2addr v4, v7

    .line 183
    add-int/2addr v3, v4

    .line 184
    if-lt v2, v3, :cond_b

    .line 185
    .line 186
    :goto_3
    iget-object v2, v1, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->b:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 187
    .line 188
    if-eqz v2, :cond_a

    .line 189
    .line 190
    iget-object v3, v2, Lio/sentry/android/core/SentryShakeDetector$Sample;->c:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 191
    .line 192
    iput-object v3, v1, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->b:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 193
    .line 194
    iget-object v3, v1, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->a:Lio/sentry/android/core/SentryShakeDetector$SamplePool;

    .line 195
    .line 196
    iget-object v4, v3, Lio/sentry/android/core/SentryShakeDetector$SamplePool;->a:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 197
    .line 198
    iput-object v4, v2, Lio/sentry/android/core/SentryShakeDetector$Sample;->c:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 199
    .line 200
    iput-object v2, v3, Lio/sentry/android/core/SentryShakeDetector$SamplePool;->a:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_a
    iput-object v12, v1, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->c:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 204
    .line 205
    const/4 v2, 0x0

    .line 206
    iput v2, v1, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->d:I

    .line 207
    .line 208
    iput v2, v1, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->e:I

    .line 209
    .line 210
    iget-object v0, v0, Lio/sentry/android/core/SentryShakeDetector;->e:Lio/sentry/android/core/SentryShakeDetector$Listener;

    .line 211
    .line 212
    if-eqz v0, :cond_b

    .line 213
    .line 214
    invoke-interface {v0}, Lio/sentry/android/core/SentryShakeDetector$Listener;->a()V

    .line 215
    .line 216
    .line 217
    :cond_b
    :goto_4
    return-void
.end method
