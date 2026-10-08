.class public final synthetic Lio/sentry/android/core/g;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 12
    iput p1, p0, Lio/sentry/android/core/g;->j:I

    iput-object p2, p0, Lio/sentry/android/core/g;->k:Ljava/lang/Object;

    iput-object p3, p0, Lio/sentry/android/core/g;->l:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ISpan;Lio/sentry/ISpan;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lio/sentry/android/core/g;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lio/sentry/android/core/g;->k:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, Lio/sentry/android/core/g;->l:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lio/sentry/android/core/g;->j:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/sentry/android/core/g;->k:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lio/sentry/android/core/SentryUserFeedbackForm;

    .line 11
    .line 12
    iget-object p0, p0, Lio/sentry/android/core/g;->l:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Landroid/app/Activity;

    .line 15
    .line 16
    sget v1, Lio/sentry/android/core/SentryUserFeedbackForm;->p:I

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Lio/sentry/android/core/SentryUserFeedbackForm;->show()V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void

    .line 34
    :pswitch_0
    iget-object v0, p0, Lio/sentry/android/core/g;->k:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Lio/sentry/android/core/FeedbackShakeIntegration;

    .line 37
    .line 38
    iget-object p0, p0, Lio/sentry/android/core/g;->l:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Ljava/lang/Runnable;

    .line 41
    .line 42
    iput-boolean v2, v0, Lio/sentry/android/core/FeedbackShakeIntegration;->n:Z

    .line 43
    .line 44
    iget-object v2, v0, Lio/sentry/android/core/FeedbackShakeIntegration;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 45
    .line 46
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iput-object p0, v2, Lio/sentry/SentryFeedbackOptions;->s:Ljava/lang/Runnable;

    .line 51
    .line 52
    if-eqz p0, :cond_1

    .line 53
    .line 54
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 55
    .line 56
    .line 57
    :cond_1
    iput-object v1, v0, Lio/sentry/android/core/FeedbackShakeIntegration;->o:Ljava/lang/Runnable;

    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_1
    iget-object v0, p0, Lio/sentry/android/core/g;->k:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v0, Lio/sentry/android/core/FeedbackShakeIntegration;

    .line 63
    .line 64
    iget-object p0, p0, Lio/sentry/android/core/g;->l:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p0, Landroid/app/Activity;

    .line 67
    .line 68
    iget-boolean v3, v0, Lio/sentry/android/core/FeedbackShakeIntegration;->n:Z

    .line 69
    .line 70
    if-nez v3, :cond_3

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-nez v3, :cond_3

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_2

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    const/4 v3, 0x1

    .line 86
    :try_start_0
    iput-boolean v3, v0, Lio/sentry/android/core/FeedbackShakeIntegration;->n:Z

    .line 87
    .line 88
    iget-object v3, v0, Lio/sentry/android/core/FeedbackShakeIntegration;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 89
    .line 90
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    iget-object v3, v3, Lio/sentry/SentryFeedbackOptions;->s:Ljava/lang/Runnable;

    .line 95
    .line 96
    iput-object v3, v0, Lio/sentry/android/core/FeedbackShakeIntegration;->o:Ljava/lang/Runnable;

    .line 97
    .line 98
    iget-object v4, v0, Lio/sentry/android/core/FeedbackShakeIntegration;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 99
    .line 100
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    new-instance v5, Lio/sentry/android/core/g;

    .line 105
    .line 106
    const/4 v6, 0x4

    .line 107
    invoke-direct {v5, v6, v0, v3}, Lio/sentry/android/core/g;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    iput-object v5, v4, Lio/sentry/SentryFeedbackOptions;->s:Ljava/lang/Runnable;

    .line 111
    .line 112
    new-instance v3, Lio/sentry/android/core/SentryUserFeedbackForm;

    .line 113
    .line 114
    invoke-direct {v3, p0}, Lio/sentry/android/core/SentryUserFeedbackForm;-><init>(Landroid/content/Context;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Lio/sentry/android/core/SentryUserFeedbackForm;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :catchall_0
    move-exception p0

    .line 122
    iput-boolean v2, v0, Lio/sentry/android/core/FeedbackShakeIntegration;->n:Z

    .line 123
    .line 124
    iget-object v2, v0, Lio/sentry/android/core/FeedbackShakeIntegration;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 125
    .line 126
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    iget-object v3, v0, Lio/sentry/android/core/FeedbackShakeIntegration;->o:Ljava/lang/Runnable;

    .line 131
    .line 132
    iput-object v3, v2, Lio/sentry/SentryFeedbackOptions;->s:Ljava/lang/Runnable;

    .line 133
    .line 134
    iput-object v1, v0, Lio/sentry/android/core/FeedbackShakeIntegration;->o:Ljava/lang/Runnable;

    .line 135
    .line 136
    iget-object v0, v0, Lio/sentry/android/core/FeedbackShakeIntegration;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 137
    .line 138
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 143
    .line 144
    const-string v2, "Failed to show feedback dialog on shake."

    .line 145
    .line 146
    invoke-interface {v0, v1, v2, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    :cond_3
    :goto_0
    return-void

    .line 150
    :pswitch_2
    iget-object v0, p0, Lio/sentry/android/core/g;->k:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v0, Lio/sentry/android/core/AppState;

    .line 153
    .line 154
    iget-object p0, p0, Lio/sentry/android/core/g;->l:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast p0, Lio/sentry/ILogger;

    .line 157
    .line 158
    sget-object v1, Lio/sentry/android/core/AppState;->n:Lio/sentry/android/core/AppState;

    .line 159
    .line 160
    invoke-virtual {v0, p0}, Lio/sentry/android/core/AppState;->h(Lio/sentry/ILogger;)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :pswitch_3
    iget-object v0, p0, Lio/sentry/android/core/g;->k:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v0, Lio/sentry/android/core/AnrIntegration;

    .line 167
    .line 168
    iget-object p0, p0, Lio/sentry/android/core/g;->l:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast p0, Lio/sentry/android/core/SentryAndroidOptions;

    .line 171
    .line 172
    iget-object v1, v0, Lio/sentry/android/core/AnrIntegration;->l:Lio/sentry/util/AutoClosableReentrantLock;

    .line 173
    .line 174
    invoke-virtual {v1}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    :try_start_1
    iget-boolean v2, v0, Lio/sentry/android/core/AnrIntegration;->k:Z

    .line 179
    .line 180
    if-nez v2, :cond_4

    .line 181
    .line 182
    invoke-virtual {v0, p0}, Lio/sentry/android/core/AnrIntegration;->a(Lio/sentry/android/core/SentryAndroidOptions;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :catchall_1
    move-exception p0

    .line 187
    goto :goto_2

    .line 188
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :goto_2
    :try_start_2
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :catchall_2
    move-exception v0

    .line 197
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 198
    .line 199
    .line 200
    :goto_3
    throw p0

    .line 201
    :pswitch_4
    iget-object v0, p0, Lio/sentry/android/core/g;->k:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v0, Lio/sentry/ISpan;

    .line 204
    .line 205
    iget-object p0, p0, Lio/sentry/android/core/g;->l:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast p0, Lio/sentry/ISpan;

    .line 208
    .line 209
    invoke-static {v0, p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->h(Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
