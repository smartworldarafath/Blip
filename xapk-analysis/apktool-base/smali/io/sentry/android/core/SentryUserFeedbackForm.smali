.class public Lio/sentry/android/core/SentryUserFeedbackForm;
.super Landroid/app/AlertDialog;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/SentryUserFeedbackForm$ShakeLifecycleCallbacks;
    }
.end annotation


# static fields
.field public static final synthetic p:I


# instance fields
.field public j:Z

.field public k:Lio/sentry/protocol/SentryId;

.field public l:Landroid/content/DialogInterface$OnDismissListener;

.field public final m:Lio/sentry/SentryFeedbackOptions;

.field public n:Lio/sentry/android/core/SentryShakeDetector;

.field public o:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 3
    .line 4
    .line 5
    iput-boolean v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->j:Z

    .line 6
    .line 7
    new-instance v1, Lio/sentry/SentryFeedbackOptions;

    .line 8
    .line 9
    invoke-static {}, Lio/sentry/Sentry;->b()Lio/sentry/IScopes;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v2}, Lio/sentry/IScopes;->j()Lio/sentry/SentryOptions;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-boolean v0, v1, Lio/sentry/SentryFeedbackOptions;->a:Z

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    iput-boolean v3, v1, Lio/sentry/SentryFeedbackOptions;->b:Z

    .line 28
    .line 29
    iput-boolean v0, v1, Lio/sentry/SentryFeedbackOptions;->c:Z

    .line 30
    .line 31
    iput-boolean v3, v1, Lio/sentry/SentryFeedbackOptions;->d:Z

    .line 32
    .line 33
    iput-boolean v3, v1, Lio/sentry/SentryFeedbackOptions;->e:Z

    .line 34
    .line 35
    iput-boolean v3, v1, Lio/sentry/SentryFeedbackOptions;->f:Z

    .line 36
    .line 37
    iput-boolean v0, v1, Lio/sentry/SentryFeedbackOptions;->g:Z

    .line 38
    .line 39
    const-string v0, "Report a Bug"

    .line 40
    .line 41
    iput-object v0, v1, Lio/sentry/SentryFeedbackOptions;->h:Ljava/lang/CharSequence;

    .line 42
    .line 43
    const-string v0, "Send Bug Report"

    .line 44
    .line 45
    iput-object v0, v1, Lio/sentry/SentryFeedbackOptions;->i:Ljava/lang/CharSequence;

    .line 46
    .line 47
    const-string v0, "Cancel"

    .line 48
    .line 49
    iput-object v0, v1, Lio/sentry/SentryFeedbackOptions;->j:Ljava/lang/CharSequence;

    .line 50
    .line 51
    const-string v0, "Name"

    .line 52
    .line 53
    iput-object v0, v1, Lio/sentry/SentryFeedbackOptions;->k:Ljava/lang/CharSequence;

    .line 54
    .line 55
    const-string v0, "Your Name"

    .line 56
    .line 57
    iput-object v0, v1, Lio/sentry/SentryFeedbackOptions;->l:Ljava/lang/CharSequence;

    .line 58
    .line 59
    const-string v0, "Email"

    .line 60
    .line 61
    iput-object v0, v1, Lio/sentry/SentryFeedbackOptions;->m:Ljava/lang/CharSequence;

    .line 62
    .line 63
    const-string v0, "your.email@example.org"

    .line 64
    .line 65
    iput-object v0, v1, Lio/sentry/SentryFeedbackOptions;->n:Ljava/lang/CharSequence;

    .line 66
    .line 67
    const-string v0, " (Required)"

    .line 68
    .line 69
    iput-object v0, v1, Lio/sentry/SentryFeedbackOptions;->o:Ljava/lang/CharSequence;

    .line 70
    .line 71
    const-string v0, "Description"

    .line 72
    .line 73
    iput-object v0, v1, Lio/sentry/SentryFeedbackOptions;->p:Ljava/lang/CharSequence;

    .line 74
    .line 75
    const-string v0, "What\'s the bug? What did you expect?"

    .line 76
    .line 77
    iput-object v0, v1, Lio/sentry/SentryFeedbackOptions;->q:Ljava/lang/CharSequence;

    .line 78
    .line 79
    const-string v0, "Thank you for your report!"

    .line 80
    .line 81
    iput-object v0, v1, Lio/sentry/SentryFeedbackOptions;->r:Ljava/lang/CharSequence;

    .line 82
    .line 83
    iget-boolean v0, v2, Lio/sentry/SentryFeedbackOptions;->a:Z

    .line 84
    .line 85
    iput-boolean v0, v1, Lio/sentry/SentryFeedbackOptions;->a:Z

    .line 86
    .line 87
    iget-boolean v0, v2, Lio/sentry/SentryFeedbackOptions;->b:Z

    .line 88
    .line 89
    iput-boolean v0, v1, Lio/sentry/SentryFeedbackOptions;->b:Z

    .line 90
    .line 91
    iget-boolean v0, v2, Lio/sentry/SentryFeedbackOptions;->c:Z

    .line 92
    .line 93
    iput-boolean v0, v1, Lio/sentry/SentryFeedbackOptions;->c:Z

    .line 94
    .line 95
    iget-boolean v0, v2, Lio/sentry/SentryFeedbackOptions;->d:Z

    .line 96
    .line 97
    iput-boolean v0, v1, Lio/sentry/SentryFeedbackOptions;->d:Z

    .line 98
    .line 99
    iget-boolean v0, v2, Lio/sentry/SentryFeedbackOptions;->e:Z

    .line 100
    .line 101
    iput-boolean v0, v1, Lio/sentry/SentryFeedbackOptions;->e:Z

    .line 102
    .line 103
    iget-boolean v0, v2, Lio/sentry/SentryFeedbackOptions;->f:Z

    .line 104
    .line 105
    iput-boolean v0, v1, Lio/sentry/SentryFeedbackOptions;->f:Z

    .line 106
    .line 107
    iget-boolean v0, v2, Lio/sentry/SentryFeedbackOptions;->g:Z

    .line 108
    .line 109
    iput-boolean v0, v1, Lio/sentry/SentryFeedbackOptions;->g:Z

    .line 110
    .line 111
    iget-object v0, v2, Lio/sentry/SentryFeedbackOptions;->h:Ljava/lang/CharSequence;

    .line 112
    .line 113
    iput-object v0, v1, Lio/sentry/SentryFeedbackOptions;->h:Ljava/lang/CharSequence;

    .line 114
    .line 115
    iget-object v0, v2, Lio/sentry/SentryFeedbackOptions;->i:Ljava/lang/CharSequence;

    .line 116
    .line 117
    iput-object v0, v1, Lio/sentry/SentryFeedbackOptions;->i:Ljava/lang/CharSequence;

    .line 118
    .line 119
    iget-object v0, v2, Lio/sentry/SentryFeedbackOptions;->j:Ljava/lang/CharSequence;

    .line 120
    .line 121
    iput-object v0, v1, Lio/sentry/SentryFeedbackOptions;->j:Ljava/lang/CharSequence;

    .line 122
    .line 123
    iget-object v0, v2, Lio/sentry/SentryFeedbackOptions;->k:Ljava/lang/CharSequence;

    .line 124
    .line 125
    iput-object v0, v1, Lio/sentry/SentryFeedbackOptions;->k:Ljava/lang/CharSequence;

    .line 126
    .line 127
    iget-object v0, v2, Lio/sentry/SentryFeedbackOptions;->l:Ljava/lang/CharSequence;

    .line 128
    .line 129
    iput-object v0, v1, Lio/sentry/SentryFeedbackOptions;->l:Ljava/lang/CharSequence;

    .line 130
    .line 131
    iget-object v0, v2, Lio/sentry/SentryFeedbackOptions;->m:Ljava/lang/CharSequence;

    .line 132
    .line 133
    iput-object v0, v1, Lio/sentry/SentryFeedbackOptions;->m:Ljava/lang/CharSequence;

    .line 134
    .line 135
    iget-object v0, v2, Lio/sentry/SentryFeedbackOptions;->n:Ljava/lang/CharSequence;

    .line 136
    .line 137
    iput-object v0, v1, Lio/sentry/SentryFeedbackOptions;->n:Ljava/lang/CharSequence;

    .line 138
    .line 139
    iget-object v0, v2, Lio/sentry/SentryFeedbackOptions;->o:Ljava/lang/CharSequence;

    .line 140
    .line 141
    iput-object v0, v1, Lio/sentry/SentryFeedbackOptions;->o:Ljava/lang/CharSequence;

    .line 142
    .line 143
    iget-object v0, v2, Lio/sentry/SentryFeedbackOptions;->p:Ljava/lang/CharSequence;

    .line 144
    .line 145
    iput-object v0, v1, Lio/sentry/SentryFeedbackOptions;->p:Ljava/lang/CharSequence;

    .line 146
    .line 147
    iget-object v0, v2, Lio/sentry/SentryFeedbackOptions;->q:Ljava/lang/CharSequence;

    .line 148
    .line 149
    iput-object v0, v1, Lio/sentry/SentryFeedbackOptions;->q:Ljava/lang/CharSequence;

    .line 150
    .line 151
    iget-object v0, v2, Lio/sentry/SentryFeedbackOptions;->r:Ljava/lang/CharSequence;

    .line 152
    .line 153
    iput-object v0, v1, Lio/sentry/SentryFeedbackOptions;->r:Ljava/lang/CharSequence;

    .line 154
    .line 155
    iget-object v0, v2, Lio/sentry/SentryFeedbackOptions;->s:Ljava/lang/Runnable;

    .line 156
    .line 157
    iput-object v0, v1, Lio/sentry/SentryFeedbackOptions;->s:Ljava/lang/Runnable;

    .line 158
    .line 159
    iput-object v1, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->m:Lio/sentry/SentryFeedbackOptions;

    .line 160
    .line 161
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->d()Lio/sentry/SentryIntegrationPackageStorage;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const-string v2, "UserFeedbackWidget"

    .line 166
    .line 167
    invoke-virtual {v0, v2}, Lio/sentry/SentryIntegrationPackageStorage;->a(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-static {}, Lio/sentry/Sentry;->b()Lio/sentry/IScopes;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-interface {v0}, Lio/sentry/IScopes;->j()Lio/sentry/SentryOptions;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iget-boolean v1, v1, Lio/sentry/SentryFeedbackOptions;->g:Z

    .line 183
    .line 184
    if-eqz v1, :cond_4

    .line 185
    .line 186
    iget-boolean v0, v0, Lio/sentry/SentryFeedbackOptions;->g:Z

    .line 187
    .line 188
    if-eqz v0, :cond_0

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_0
    :goto_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    .line 192
    .line 193
    if-eqz v0, :cond_2

    .line 194
    .line 195
    instance-of v0, p1, Landroid/app/Activity;

    .line 196
    .line 197
    if-eqz v0, :cond_1

    .line 198
    .line 199
    check-cast p1, Landroid/app/Activity;

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_1
    check-cast p1, Landroid/content/ContextWrapper;

    .line 203
    .line 204
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    goto :goto_0

    .line 209
    :cond_2
    const/4 p1, 0x0

    .line 210
    :goto_1
    if-nez p1, :cond_3

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_3
    invoke-static {}, Lio/sentry/Sentry;->b()Lio/sentry/IScopes;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-interface {v0}, Lio/sentry/IScopes;->j()Lio/sentry/SentryOptions;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    new-instance v1, Lio/sentry/android/core/SentryShakeDetector;

    .line 222
    .line 223
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-direct {v1, v0}, Lio/sentry/android/core/SentryShakeDetector;-><init>(Lio/sentry/ILogger;)V

    .line 228
    .line 229
    .line 230
    iput-object v1, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->n:Lio/sentry/android/core/SentryShakeDetector;

    .line 231
    .line 232
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 233
    .line 234
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    iget-object v1, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->n:Lio/sentry/android/core/SentryShakeDetector;

    .line 238
    .line 239
    new-instance v2, Lio/sentry/android/core/e;

    .line 240
    .line 241
    invoke-direct {v2, p0, v0}, Lio/sentry/android/core/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, p1, v2}, Lio/sentry/android/core/SentryShakeDetector;->b(Landroid/app/Activity;Lio/sentry/android/core/SentryShakeDetector$Listener;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    new-instance v1, Lio/sentry/android/core/SentryUserFeedbackForm$ShakeLifecycleCallbacks;

    .line 252
    .line 253
    invoke-direct {v1, p0, v0}, Lio/sentry/android/core/SentryUserFeedbackForm$ShakeLifecycleCallbacks;-><init>(Lio/sentry/android/core/SentryUserFeedbackForm;Ljava/lang/ref/WeakReference;)V

    .line 254
    .line 255
    .line 256
    iput-object v1, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->o:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 257
    .line 258
    invoke-virtual {p1, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 259
    .line 260
    .line 261
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d006c

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/high16 v0, 0x20000

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-boolean p1, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->j:Z

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lio/sentry/android/core/SentryUserFeedbackForm;->setCancelable(Z)V

    .line 24
    .line 25
    .line 26
    const p1, 0x7f0a01a0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroid/widget/TextView;

    .line 34
    .line 35
    const v0, 0x7f0a019f

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/ImageView;

    .line 43
    .line 44
    const v1, 0x7f0a01a3

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    move-object v8, v1

    .line 52
    check-cast v8, Landroid/widget/TextView;

    .line 53
    .line 54
    const v1, 0x7f0a019d

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    move-object v4, v1

    .line 62
    check-cast v4, Landroid/widget/EditText;

    .line 63
    .line 64
    const v1, 0x7f0a01a2

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    move-object v9, v1

    .line 72
    check-cast v9, Landroid/widget/TextView;

    .line 73
    .line 74
    const v1, 0x7f0a019c

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    move-object v5, v1

    .line 82
    check-cast v5, Landroid/widget/EditText;

    .line 83
    .line 84
    const v1, 0x7f0a01a1

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    move-object v10, v1

    .line 92
    check-cast v10, Landroid/widget/TextView;

    .line 93
    .line 94
    const v1, 0x7f0a019b

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    move-object v6, v1

    .line 102
    check-cast v6, Landroid/widget/EditText;

    .line 103
    .line 104
    const v1, 0x7f0a019a

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Landroid/widget/Button;

    .line 112
    .line 113
    const v2, 0x7f0a0199

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    move-object v11, v2

    .line 121
    check-cast v11, Landroid/widget/Button;

    .line 122
    .line 123
    iget-object v7, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->m:Lio/sentry/SentryFeedbackOptions;

    .line 124
    .line 125
    iget-boolean v2, v7, Lio/sentry/SentryFeedbackOptions;->f:Z

    .line 126
    .line 127
    iget-object v3, v7, Lio/sentry/SentryFeedbackOptions;->o:Ljava/lang/CharSequence;

    .line 128
    .line 129
    const/16 v12, 0x8

    .line 130
    .line 131
    const/4 v13, 0x0

    .line 132
    if-eqz v2, :cond_1

    .line 133
    .line 134
    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    :goto_0
    iget-boolean v0, v7, Lio/sentry/SentryFeedbackOptions;->b:Z

    .line 142
    .line 143
    if-nez v0, :cond_2

    .line 144
    .line 145
    iget-boolean v0, v7, Lio/sentry/SentryFeedbackOptions;->a:Z

    .line 146
    .line 147
    if-nez v0, :cond_2

    .line 148
    .line 149
    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_2
    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    iget-object v0, v7, Lio/sentry/SentryFeedbackOptions;->k:Ljava/lang/CharSequence;

    .line 163
    .line 164
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    iget-object v0, v7, Lio/sentry/SentryFeedbackOptions;->l:Ljava/lang/CharSequence;

    .line 168
    .line 169
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    iget-boolean v0, v7, Lio/sentry/SentryFeedbackOptions;->a:Z

    .line 173
    .line 174
    if-eqz v0, :cond_3

    .line 175
    .line 176
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 177
    .line 178
    .line 179
    :cond_3
    :goto_1
    iget-boolean v0, v7, Lio/sentry/SentryFeedbackOptions;->d:Z

    .line 180
    .line 181
    if-nez v0, :cond_4

    .line 182
    .line 183
    iget-boolean v0, v7, Lio/sentry/SentryFeedbackOptions;->c:Z

    .line 184
    .line 185
    if-nez v0, :cond_4

    .line 186
    .line 187
    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_4
    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    .line 198
    .line 199
    .line 200
    iget-object v0, v7, Lio/sentry/SentryFeedbackOptions;->m:Ljava/lang/CharSequence;

    .line 201
    .line 202
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    .line 204
    .line 205
    iget-object v0, v7, Lio/sentry/SentryFeedbackOptions;->n:Ljava/lang/CharSequence;

    .line 206
    .line 207
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 208
    .line 209
    .line 210
    iget-boolean v0, v7, Lio/sentry/SentryFeedbackOptions;->c:Z

    .line 211
    .line 212
    if-eqz v0, :cond_5

    .line 213
    .line 214
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 215
    .line 216
    .line 217
    :cond_5
    :goto_2
    iget-boolean v0, v7, Lio/sentry/SentryFeedbackOptions;->e:Z

    .line 218
    .line 219
    if-eqz v0, :cond_6

    .line 220
    .line 221
    invoke-static {}, Lio/sentry/Sentry;->b()Lio/sentry/IScopes;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-interface {v0}, Lio/sentry/IScopes;->s()Lio/sentry/IScope;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-interface {v0}, Lio/sentry/IScope;->I()Lio/sentry/protocol/User;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    if-eqz v0, :cond_6

    .line 234
    .line 235
    iget-object v2, v0, Lio/sentry/protocol/User;->l:Ljava/lang/String;

    .line 236
    .line 237
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    .line 239
    .line 240
    iget-object v0, v0, Lio/sentry/protocol/User;->j:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    .line 244
    .line 245
    :cond_6
    iget-object v0, v7, Lio/sentry/SentryFeedbackOptions;->p:Ljava/lang/CharSequence;

    .line 246
    .line 247
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 251
    .line 252
    .line 253
    iget-object v0, v7, Lio/sentry/SentryFeedbackOptions;->q:Ljava/lang/CharSequence;

    .line 254
    .line 255
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 256
    .line 257
    .line 258
    iget-object v0, v7, Lio/sentry/SentryFeedbackOptions;->h:Ljava/lang/CharSequence;

    .line 259
    .line 260
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    .line 262
    .line 263
    iget-object p1, v7, Lio/sentry/SentryFeedbackOptions;->i:Ljava/lang/CharSequence;

    .line 264
    .line 265
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    .line 267
    .line 268
    new-instance v2, Lio/sentry/android/core/n;

    .line 269
    .line 270
    move-object v3, p0

    .line 271
    invoke-direct/range {v2 .. v10}, Lio/sentry/android/core/n;-><init>(Lio/sentry/android/core/SentryUserFeedbackForm;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lio/sentry/SentryFeedbackOptions;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    .line 276
    .line 277
    iget-object p0, v7, Lio/sentry/SentryFeedbackOptions;->j:Ljava/lang/CharSequence;

    .line 278
    .line 279
    invoke-virtual {v11, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    .line 281
    .line 282
    new-instance p0, Lio/sentry/android/core/o;

    .line 283
    .line 284
    invoke-direct {p0, v3}, Lio/sentry/android/core/o;-><init>(Lio/sentry/android/core/SentryUserFeedbackForm;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v11, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    .line 289
    .line 290
    iget-object p0, v3, Lio/sentry/android/core/SentryUserFeedbackForm;->l:Landroid/content/DialogInterface$OnDismissListener;

    .line 291
    .line 292
    invoke-virtual {v3, p0}, Lio/sentry/android/core/SentryUserFeedbackForm;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 293
    .line 294
    .line 295
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a019b

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/EditText;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lio/sentry/Sentry;->b()Lio/sentry/IScopes;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Lio/sentry/IScopes;->j()Lio/sentry/SentryOptions;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-interface {v1, v2}, Lio/sentry/ReplayController;->n(Ljava/lang/Boolean;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0}, Lio/sentry/ReplayController;->h()Lio/sentry/protocol/SentryId;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->k:Lio/sentry/protocol/SentryId;

    .line 57
    .line 58
    return-void
.end method

.method public final setCancelable(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->j:Z

    .line 5
    .line 6
    return-void
.end method

.method public final setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->l:Landroid/content/DialogInterface$OnDismissListener;

    .line 2
    .line 3
    invoke-static {}, Lio/sentry/Sentry;->b()Lio/sentry/IScopes;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Lio/sentry/IScopes;->j()Lio/sentry/SentryOptions;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p1, p1, Lio/sentry/SentryFeedbackOptions;->s:Ljava/lang/Runnable;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    new-instance v0, Lio/sentry/android/core/p;

    .line 20
    .line 21
    invoke-direct {v0, p0, p1}, Lio/sentry/android/core/p;-><init>(Lio/sentry/android/core/SentryUserFeedbackForm;Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    invoke-super {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object p1, p0, Lio/sentry/android/core/SentryUserFeedbackForm;->l:Landroid/content/DialogInterface$OnDismissListener;

    .line 29
    .line 30
    invoke-super {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final show()V
    .locals 3

    .line 1
    invoke-static {}, Lio/sentry/Sentry;->b()Lio/sentry/IScopes;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lio/sentry/IScopes;->j()Lio/sentry/SentryOptions;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0}, Lio/sentry/IScopes;->isEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->isEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    new-array v1, v1, [Ljava/lang/Object;

    .line 34
    .line 35
    const-string v2, "Sentry is disabled. Feedback dialog won\'t be shown."

    .line 36
    .line 37
    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
