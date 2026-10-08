.class public final Lio/sentry/SentryAppStartProfilingOptions;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryAppStartProfilingOptions$Deserializer;
    }
.end annotation


# instance fields
.field public j:Z

.field public k:Ljava/lang/Double;

.field public l:Z

.field public m:Ljava/lang/Double;

.field public n:Ljava/lang/String;

.field public o:Z

.field public p:Z

.field public q:I

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Lio/sentry/ProfileLifecycle;

.field public v:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/TracesSamplingDecision;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p2, Lio/sentry/TracesSamplingDecision;->a:Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->l:Z

    .line 11
    .line 12
    iget-object v0, p2, Lio/sentry/TracesSamplingDecision;->b:Ljava/lang/Double;

    .line 13
    .line 14
    iput-object v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->m:Ljava/lang/Double;

    .line 15
    .line 16
    iget-object v0, p2, Lio/sentry/TracesSamplingDecision;->d:Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->j:Z

    .line 23
    .line 24
    iget-object p2, p2, Lio/sentry/TracesSamplingDecision;->e:Ljava/lang/Double;

    .line 25
    .line 26
    iput-object p2, p0, Lio/sentry/SentryAppStartProfilingOptions;->k:Ljava/lang/Double;

    .line 27
    .line 28
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getInternalTracesSampler()Lio/sentry/TracesSampler;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {}, Lio/sentry/util/SentryRandom;->a()Lio/sentry/util/Random;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lio/sentry/util/Random;->c()D

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    iget-object p2, p2, Lio/sentry/TracesSampler;->a:Lio/sentry/SentryOptions;

    .line 41
    .line 42
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getProfileSessionSampleRate()Ljava/lang/Double;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-eqz p2, :cond_0

    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    cmpg-double p2, v2, v0

    .line 53
    .line 54
    if-ltz p2, :cond_0

    .line 55
    .line 56
    const/4 p2, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 p2, 0x0

    .line 59
    :goto_0
    iput-boolean p2, p0, Lio/sentry/SentryAppStartProfilingOptions;->r:Z

    .line 60
    .line 61
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getProfilingTracesDirPath()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iput-object p2, p0, Lio/sentry/SentryAppStartProfilingOptions;->n:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isProfilingEnabled()Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    iput-boolean p2, p0, Lio/sentry/SentryAppStartProfilingOptions;->o:Z

    .line 72
    .line 73
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isContinuousProfilingEnabled()Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    iput-boolean p2, p0, Lio/sentry/SentryAppStartProfilingOptions;->p:Z

    .line 78
    .line 79
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getProfileLifecycle()Lio/sentry/ProfileLifecycle;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    iput-object p2, p0, Lio/sentry/SentryAppStartProfilingOptions;->u:Lio/sentry/ProfileLifecycle;

    .line 84
    .line 85
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getProfilingTracesHz()I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    iput p2, p0, Lio/sentry/SentryAppStartProfilingOptions;->q:I

    .line 90
    .line 91
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isEnableAppStartProfiling()Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    iput-boolean p2, p0, Lio/sentry/SentryAppStartProfilingOptions;->s:Z

    .line 96
    .line 97
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isStartProfilerOnAppStart()Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    iput-boolean p1, p0, Lio/sentry/SentryAppStartProfilingOptions;->t:Z

    .line 102
    .line 103
    return-void
.end method


# virtual methods
.method public final serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3

    .line 1
    check-cast p1, Lio/sentry/JsonObjectWriter;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->a()Lio/sentry/JsonObjectWriter;

    .line 4
    .line 5
    .line 6
    const-string v0, "profile_sampled"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->j:Z

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 18
    .line 19
    .line 20
    const-string v0, "profile_sample_rate"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->k:Ljava/lang/Double;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 28
    .line 29
    .line 30
    const-string v0, "continuous_profile_sampled"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 33
    .line 34
    .line 35
    iget-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->r:Z

    .line 36
    .line 37
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 42
    .line 43
    .line 44
    const-string v0, "trace_sampled"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 47
    .line 48
    .line 49
    iget-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->l:Z

    .line 50
    .line 51
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 56
    .line 57
    .line 58
    const-string v0, "trace_sample_rate"

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->m:Ljava/lang/Double;

    .line 64
    .line 65
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 66
    .line 67
    .line 68
    const-string v0, "profiling_traces_dir_path"

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->n:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 76
    .line 77
    .line 78
    const-string v0, "is_profiling_enabled"

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 81
    .line 82
    .line 83
    iget-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->o:Z

    .line 84
    .line 85
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 90
    .line 91
    .line 92
    const-string v0, "is_continuous_profiling_enabled"

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 95
    .line 96
    .line 97
    iget-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->p:Z

    .line 98
    .line 99
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 104
    .line 105
    .line 106
    const-string v0, "profile_lifecycle"

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->u:Lio/sentry/ProfileLifecycle;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 118
    .line 119
    .line 120
    const-string v0, "profiling_traces_hz"

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 123
    .line 124
    .line 125
    iget v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->q:I

    .line 126
    .line 127
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 132
    .line 133
    .line 134
    const-string v0, "is_enable_app_start_profiling"

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 137
    .line 138
    .line 139
    iget-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->s:Z

    .line 140
    .line 141
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 146
    .line 147
    .line 148
    const-string v0, "is_start_profiler_on_app_start"

    .line 149
    .line 150
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 151
    .line 152
    .line 153
    iget-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->t:Z

    .line 154
    .line 155
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {p1, p2, v0}, Lio/sentry/JsonObjectWriter;->g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->v:Ljava/util/concurrent/ConcurrentHashMap;

    .line 163
    .line 164
    if-eqz v0, :cond_0

    .line 165
    .line 166
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_0

    .line 179
    .line 180
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    check-cast v1, Ljava/lang/String;

    .line 185
    .line 186
    iget-object v2, p0, Lio/sentry/SentryAppStartProfilingOptions;->v:Ljava/util/concurrent/ConcurrentHashMap;

    .line 187
    .line 188
    invoke-static {v2, v1, p1, v1, p2}, Ljb;->o(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lio/sentry/JsonObjectWriter;Ljava/lang/String;Lio/sentry/ILogger;)V

    .line 189
    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->b()Lio/sentry/JsonObjectWriter;

    .line 193
    .line 194
    .line 195
    return-void
.end method
