.class final Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Landroid/content/Context;


# virtual methods
.method public final a()Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;
    .locals 15

    .line 1
    iget-object p0, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent$Builder;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory$InstanceHolder;->a:Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->a(Lcom/google/android/datatransport/runtime/dagger/internal/Factory;)Ljavax/inject/Provider;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->j:Ljavax/inject/Provider;

    .line 17
    .line 18
    new-instance v1, Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->k:Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;

    .line 24
    .line 25
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;->a()Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;->a()Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    new-instance v3, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory_Factory;

    .line 34
    .line 35
    invoke-direct {v3, v1, p0, v2}, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory_Factory;-><init>(Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;)V

    .line 36
    .line 37
    .line 38
    iget-object p0, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->k:Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;

    .line 39
    .line 40
    new-instance v1, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry_Factory;

    .line 41
    .line 42
    invoke-direct {v1, p0, v3}, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry_Factory;-><init>(Ljavax/inject/Provider;Lcom/google/android/datatransport/runtime/backends/CreationContextFactory_Factory;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->a(Lcom/google/android/datatransport/runtime/dagger/internal/Factory;)Ljavax/inject/Provider;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    iput-object p0, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->l:Ljavax/inject/Provider;

    .line 50
    .line 51
    iget-object p0, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->k:Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;

    .line 52
    .line 53
    new-instance v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager_Factory;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager_Factory;-><init>(Ljavax/inject/Provider;)V

    .line 56
    .line 57
    .line 58
    iput-object v1, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->m:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager_Factory;

    .line 59
    .line 60
    iget-object p0, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->k:Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;

    .line 61
    .line 62
    new-instance v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule_PackageNameFactory;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule_PackageNameFactory;-><init>(Ljavax/inject/Provider;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->a(Lcom/google/android/datatransport/runtime/dagger/internal/Factory;)Ljavax/inject/Provider;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    iput-object p0, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->n:Ljavax/inject/Provider;

    .line 72
    .line 73
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;->a()Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;->a()Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget-object v2, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->m:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager_Factory;

    .line 82
    .line 83
    iget-object v3, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->n:Ljavax/inject/Provider;

    .line 84
    .line 85
    new-instance v4, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore_Factory;

    .line 86
    .line 87
    invoke-direct {v4, p0, v1, v2, v3}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore_Factory;-><init>(Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v4}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->a(Lcom/google/android/datatransport/runtime/dagger/internal/Factory;)Ljavax/inject/Provider;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    iput-object p0, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->o:Ljavax/inject/Provider;

    .line 95
    .line 96
    new-instance p0, Lcom/google/android/datatransport/runtime/scheduling/SchedulingConfigModule_ConfigFactory;

    .line 97
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    .line 100
    .line 101
    iget-object v1, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->k:Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;

    .line 102
    .line 103
    iget-object v2, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->o:Ljavax/inject/Provider;

    .line 104
    .line 105
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;->a()Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    new-instance v7, Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory;

    .line 110
    .line 111
    invoke-direct {v7, v1, v2, p0, v3}, Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/google/android/datatransport/runtime/scheduling/SchedulingConfigModule_ConfigFactory;Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;)V

    .line 112
    .line 113
    .line 114
    iput-object v7, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->p:Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory;

    .line 115
    .line 116
    iget-object v5, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->j:Ljavax/inject/Provider;

    .line 117
    .line 118
    iget-object v6, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->l:Ljavax/inject/Provider;

    .line 119
    .line 120
    iget-object v8, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->o:Ljavax/inject/Provider;

    .line 121
    .line 122
    new-instance v4, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler_Factory;

    .line 123
    .line 124
    move-object v9, v8

    .line 125
    invoke-direct/range {v4 .. v9}, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 126
    .line 127
    .line 128
    iput-object v4, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->q:Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler_Factory;

    .line 129
    .line 130
    move-object v9, v5

    .line 131
    iget-object v5, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->k:Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;

    .line 132
    .line 133
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;->a()Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;

    .line 134
    .line 135
    .line 136
    move-result-object v11

    .line 137
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;->a()Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;

    .line 138
    .line 139
    .line 140
    move-result-object v12

    .line 141
    iget-object v13, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->o:Ljavax/inject/Provider;

    .line 142
    .line 143
    new-instance v4, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;

    .line 144
    .line 145
    move-object v10, v8

    .line 146
    move-object v14, v8

    .line 147
    move-object v8, v7

    .line 148
    move-object v7, v14

    .line 149
    invoke-direct/range {v4 .. v13}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;Ljavax/inject/Provider;)V

    .line 150
    .line 151
    .line 152
    iput-object v4, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->r:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;

    .line 153
    .line 154
    iget-object p0, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->j:Ljavax/inject/Provider;

    .line 155
    .line 156
    iget-object v1, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->p:Lcom/google/android/datatransport/runtime/scheduling/SchedulingModule_WorkSchedulerFactory;

    .line 157
    .line 158
    new-instance v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer_Factory;

    .line 159
    .line 160
    invoke-direct {v2, p0, v13, v1, v13}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 161
    .line 162
    .line 163
    iput-object v2, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->s:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer_Factory;

    .line 164
    .line 165
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;->a()Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-static {}, Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;->a()Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    iget-object v6, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->q:Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler_Factory;

    .line 174
    .line 175
    iget-object v7, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->r:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader_Factory;

    .line 176
    .line 177
    iget-object v8, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->s:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer_Factory;

    .line 178
    .line 179
    new-instance v3, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;

    .line 180
    .line 181
    invoke-direct/range {v3 .. v8}, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;-><init>(Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 182
    .line 183
    .line 184
    invoke-static {v3}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->a(Lcom/google/android/datatransport/runtime/dagger/internal/Factory;)Ljavax/inject/Provider;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    iput-object p0, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->t:Ljavax/inject/Provider;

    .line 189
    .line 190
    return-object v0

    .line 191
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 192
    .line 193
    const-class v0, Landroid/content/Context;

    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v0, " must be set"

    .line 208
    .line 209
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw p0
.end method
