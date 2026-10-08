.class public Landroidx/work/impl/foreground/SystemForegroundService;
.super Landroidx/lifecycle/LifecycleService;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/foreground/SystemForegroundService$Api31Impl;,
        Landroidx/work/impl/foreground/SystemForegroundService$Api29Impl;
    }
.end annotation


# static fields
.field public static final n:Ljava/lang/String;


# instance fields
.field public k:Z

.field public l:Landroidx/work/impl/foreground/SystemForegroundDispatcher;

.field public m:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "SystemFgService"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/Logger;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/impl/foreground/SystemForegroundService;->n:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/LifecycleService;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "notification"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/app/NotificationManager;

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->m:Landroid/app/NotificationManager;

    .line 14
    .line 15
    new-instance v0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->l:Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    .line 25
    .line 26
    iget-object v1, v0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->r:Landroidx/work/impl/foreground/SystemForegroundService;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    sget-object v0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->s:Ljava/lang/String;

    .line 35
    .line 36
    const-string v1, "A callback already exists."

    .line 37
    .line 38
    invoke-virtual {p0, v0, v1}, Landroidx/work/Logger;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    iput-object p0, v0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->r:Landroidx/work/impl/foreground/SystemForegroundService;

    .line 43
    .line 44
    return-void
.end method

.method public final onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/LifecycleService;->onCreate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/work/impl/foreground/SystemForegroundService;->b()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/LifecycleService;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->l:Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->e()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 2
    .line 3
    .line 4
    iget-boolean p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->k:Z

    .line 5
    .line 6
    sget-object v0, Landroidx/work/impl/foreground/SystemForegroundService;->n:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const-string v1, "Re-initializing SystemForegroundService after a request to shut-down."

    .line 15
    .line 16
    invoke-virtual {p2, v0, v1}, Landroidx/work/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->l:Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    .line 20
    .line 21
    invoke-virtual {p2}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->e()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/work/impl/foreground/SystemForegroundService;->b()V

    .line 25
    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    iput-boolean p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->k:Z

    .line 29
    .line 30
    :cond_0
    if-eqz p1, :cond_4

    .line 31
    .line 32
    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->l:Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    sget-object p2, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->s:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "ACTION_START_FOREGROUND"

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    const-string v3, "KEY_WORKSPEC_ID"

    .line 50
    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v1, "Started foreground service "

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p3, p2, v0}, Landroidx/work/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    iget-object p3, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->k:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 79
    .line 80
    new-instance v0, Landroidx/work/impl/foreground/SystemForegroundDispatcher$1;

    .line 81
    .line 82
    invoke-direct {v0, p0, p2}, Landroidx/work/impl/foreground/SystemForegroundDispatcher$1;-><init>(Landroidx/work/impl/foreground/SystemForegroundDispatcher;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    check-cast p3, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 89
    .line 90
    iget-object p2, p3, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->a:Landroidx/work/impl/utils/SerialExecutorImpl;

    .line 91
    .line 92
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p1}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->c(Landroid/content/Intent;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_0

    .line 99
    .line 100
    :cond_1
    const-string v2, "ACTION_NOTIFY"

    .line 101
    .line 102
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_2

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->c(Landroid/content/Intent;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    const-string v2, "ACTION_CANCEL_WORK"

    .line 113
    .line 114
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_3

    .line 119
    .line 120
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v1, "Stopping foreground work for "

    .line 127
    .line 128
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {p3, p2, v0}, Landroidx/work/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    if-eqz p1, :cond_4

    .line 146
    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    if-nez p2, :cond_4

    .line 152
    .line 153
    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->j:Landroidx/work/impl/WorkManagerImpl;

    .line 154
    .line 155
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    iget-object p2, p0, Landroidx/work/impl/WorkManagerImpl;->b:Landroidx/work/Configuration;

    .line 166
    .line 167
    iget-object p2, p2, Landroidx/work/Configuration;->m:Landroidx/work/ConfigurationKt$createDefaultTracer$tracer$1;

    .line 168
    .line 169
    iget-object p3, p0, Landroidx/work/impl/WorkManagerImpl;->d:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 170
    .line 171
    check-cast p3, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 172
    .line 173
    iget-object p3, p3, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->a:Landroidx/work/impl/utils/SerialExecutorImpl;

    .line 174
    .line 175
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    new-instance v0, Lp0;

    .line 179
    .line 180
    const/4 v1, 0x7

    .line 181
    invoke-direct {v0, v1, p0, p1}, Lp0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    const-string p0, "CancelWorkById"

    .line 185
    .line 186
    invoke-static {p2, p0, p3, v0}, Landroidx/work/OperationKt;->a(Landroidx/work/ConfigurationKt$createDefaultTracer$tracer$1;Ljava/lang/String;Landroidx/work/impl/utils/SerialExecutorImpl;Lkotlin/jvm/functions/Function0;)Landroidx/work/Operation;

    .line 187
    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_3
    const-string p1, "ACTION_STOP_FOREGROUND"

    .line 191
    .line 192
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    if-eqz p1, :cond_4

    .line 197
    .line 198
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    const-string v1, "Stopping foreground service"

    .line 203
    .line 204
    invoke-virtual {p1, p2, v1}, Landroidx/work/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->r:Landroidx/work/impl/foreground/SystemForegroundService;

    .line 208
    .line 209
    if-eqz p0, :cond_4

    .line 210
    .line 211
    const/4 p1, 0x1

    .line 212
    iput-boolean p1, p0, Landroidx/work/impl/foreground/SystemForegroundService;->k:Z

    .line 213
    .line 214
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    const-string v1, "Shutting down."

    .line 219
    .line 220
    invoke-virtual {p2, v0, v1}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(Z)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, p3}, Landroid/app/Service;->stopSelf(I)V

    .line 227
    .line 228
    .line 229
    :cond_4
    :goto_0
    const/4 p0, 0x3

    .line 230
    return p0
.end method

.method public final onTimeout(I)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x23

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->l:Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    .line 9
    .line 10
    const/16 v0, 0x800

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->f(II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onTimeout(II)V
    .locals 0

    .line 16
    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->l:Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->f(II)V

    return-void
.end method
