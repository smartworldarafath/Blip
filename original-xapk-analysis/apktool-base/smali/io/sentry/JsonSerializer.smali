.class public final Lio/sentry/JsonSerializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/ISerializer;


# static fields
.field public static final c:Ljava/nio/charset/Charset;


# instance fields
.field public final a:Lio/sentry/SentryOptions;

.field public final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/sentry/JsonSerializer;->c:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/JsonSerializer;->a:Lio/sentry/SentryOptions;

    .line 5
    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lio/sentry/JsonSerializer;->b:Ljava/util/HashMap;

    .line 12
    .line 13
    new-instance p0, Lio/sentry/protocol/App$Deserializer;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    const-class v0, Lio/sentry/protocol/App;

    .line 19
    .line 20
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    new-instance p0, Lio/sentry/Breadcrumb$Deserializer;

    .line 24
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    const-class v0, Lio/sentry/Breadcrumb;

    .line 29
    .line 30
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    new-instance p0, Lio/sentry/protocol/Browser$Deserializer;

    .line 34
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    const-class v0, Lio/sentry/protocol/Browser;

    .line 39
    .line 40
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    new-instance p0, Lio/sentry/protocol/Contexts$Deserializer;

    .line 44
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    const-class v0, Lio/sentry/protocol/Contexts;

    .line 49
    .line 50
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    new-instance p0, Lio/sentry/protocol/DebugImage$Deserializer;

    .line 54
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    .line 57
    .line 58
    const-class v0, Lio/sentry/protocol/DebugImage;

    .line 59
    .line 60
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    new-instance p0, Lio/sentry/protocol/DebugMeta$Deserializer;

    .line 64
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    .line 67
    .line 68
    const-class v0, Lio/sentry/protocol/DebugMeta;

    .line 69
    .line 70
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    new-instance p0, Lio/sentry/protocol/Device$Deserializer;

    .line 74
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    .line 77
    .line 78
    const-class v0, Lio/sentry/protocol/Device;

    .line 79
    .line 80
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    new-instance p0, Lio/sentry/protocol/Device$DeviceOrientation$Deserializer;

    .line 84
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    .line 87
    .line 88
    const-class v0, Lio/sentry/protocol/Device$DeviceOrientation;

    .line 89
    .line 90
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    new-instance p0, Lio/sentry/protocol/Feedback$Deserializer;

    .line 94
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    .line 97
    .line 98
    const-class v0, Lio/sentry/protocol/Feedback;

    .line 99
    .line 100
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    new-instance p0, Lio/sentry/protocol/Gpu$Deserializer;

    .line 104
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    .line 107
    .line 108
    const-class v0, Lio/sentry/protocol/Gpu;

    .line 109
    .line 110
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    new-instance p0, Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment$Deserializer;

    .line 114
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    .line 117
    .line 118
    const-class v0, Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

    .line 119
    .line 120
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    new-instance p0, Lio/sentry/protocol/MeasurementValue$Deserializer;

    .line 124
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    .line 127
    .line 128
    const-class v0, Lio/sentry/protocol/MeasurementValue;

    .line 129
    .line 130
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    new-instance p0, Lio/sentry/protocol/Mechanism$Deserializer;

    .line 134
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    .line 137
    .line 138
    const-class v0, Lio/sentry/protocol/Mechanism;

    .line 139
    .line 140
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    new-instance p0, Lio/sentry/protocol/Message$Deserializer;

    .line 144
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    .line 147
    .line 148
    const-class v0, Lio/sentry/protocol/Message;

    .line 149
    .line 150
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    new-instance p0, Lio/sentry/protocol/OperatingSystem$Deserializer;

    .line 154
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    .line 157
    .line 158
    const-class v0, Lio/sentry/protocol/OperatingSystem;

    .line 159
    .line 160
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    new-instance p0, Lio/sentry/ProfileChunk$Deserializer;

    .line 164
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    .line 167
    .line 168
    const-class v0, Lio/sentry/ProfileChunk;

    .line 169
    .line 170
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    new-instance p0, Lio/sentry/ProfileContext$Deserializer;

    .line 174
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    .line 177
    .line 178
    const-class v0, Lio/sentry/ProfileContext;

    .line 179
    .line 180
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    new-instance p0, Lio/sentry/ProfilingTraceData$Deserializer;

    .line 184
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    .line 187
    .line 188
    const-class v0, Lio/sentry/ProfilingTraceData;

    .line 189
    .line 190
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    new-instance p0, Lio/sentry/ProfilingTransactionData$Deserializer;

    .line 194
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    .line 197
    .line 198
    const-class v0, Lio/sentry/ProfilingTransactionData;

    .line 199
    .line 200
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    new-instance p0, Lio/sentry/profilemeasurements/ProfileMeasurement$Deserializer;

    .line 204
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    .line 207
    .line 208
    const-class v0, Lio/sentry/profilemeasurements/ProfileMeasurement;

    .line 209
    .line 210
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    new-instance p0, Lio/sentry/profilemeasurements/ProfileMeasurementValue$Deserializer;

    .line 214
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    .line 217
    .line 218
    const-class v0, Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    .line 219
    .line 220
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    new-instance p0, Lio/sentry/protocol/Request$Deserializer;

    .line 224
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    .line 227
    .line 228
    const-class v0, Lio/sentry/protocol/Request;

    .line 229
    .line 230
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    new-instance p0, Lio/sentry/ReplayRecording$Deserializer;

    .line 234
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    .line 237
    .line 238
    const-class v0, Lio/sentry/ReplayRecording;

    .line 239
    .line 240
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    new-instance p0, Lio/sentry/rrweb/RRWebBreadcrumbEvent$Deserializer;

    .line 244
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    .line 247
    .line 248
    const-class v0, Lio/sentry/rrweb/RRWebBreadcrumbEvent;

    .line 249
    .line 250
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    new-instance p0, Lio/sentry/rrweb/RRWebEventType$Deserializer;

    .line 254
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    .line 257
    .line 258
    const-class v0, Lio/sentry/rrweb/RRWebEventType;

    .line 259
    .line 260
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    new-instance p0, Lio/sentry/rrweb/RRWebInteractionEvent$Deserializer;

    .line 264
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    .line 267
    .line 268
    const-class v0, Lio/sentry/rrweb/RRWebInteractionEvent;

    .line 269
    .line 270
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    new-instance p0, Lio/sentry/rrweb/RRWebInteractionMoveEvent$Deserializer;

    .line 274
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    .line 277
    .line 278
    const-class v0, Lio/sentry/rrweb/RRWebInteractionMoveEvent;

    .line 279
    .line 280
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    new-instance p0, Lio/sentry/rrweb/RRWebMetaEvent$Deserializer;

    .line 284
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    .line 287
    .line 288
    const-class v0, Lio/sentry/rrweb/RRWebMetaEvent;

    .line 289
    .line 290
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    new-instance p0, Lio/sentry/rrweb/RRWebSpanEvent$Deserializer;

    .line 294
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    .line 297
    .line 298
    const-class v0, Lio/sentry/rrweb/RRWebSpanEvent;

    .line 299
    .line 300
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    new-instance p0, Lio/sentry/rrweb/RRWebVideoEvent$Deserializer;

    .line 304
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    .line 307
    .line 308
    const-class v0, Lio/sentry/rrweb/RRWebVideoEvent;

    .line 309
    .line 310
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    new-instance p0, Lio/sentry/protocol/SdkInfo$Deserializer;

    .line 314
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    .line 317
    .line 318
    const-class v0, Lio/sentry/protocol/SdkInfo;

    .line 319
    .line 320
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    new-instance p0, Lio/sentry/protocol/SdkVersion$Deserializer;

    .line 324
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    .line 327
    .line 328
    const-class v0, Lio/sentry/protocol/SdkVersion;

    .line 329
    .line 330
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    new-instance p0, Lio/sentry/SentryEnvelopeHeader$Deserializer;

    .line 334
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    .line 337
    .line 338
    const-class v0, Lio/sentry/SentryEnvelopeHeader;

    .line 339
    .line 340
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    new-instance p0, Lio/sentry/SentryEnvelopeItemHeader$Deserializer;

    .line 344
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    .line 347
    .line 348
    const-class v0, Lio/sentry/SentryEnvelopeItemHeader;

    .line 349
    .line 350
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    new-instance p0, Lio/sentry/SentryEvent$Deserializer;

    .line 354
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    .line 357
    .line 358
    const-class v0, Lio/sentry/SentryEvent;

    .line 359
    .line 360
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    new-instance p0, Lio/sentry/protocol/SentryException$Deserializer;

    .line 364
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    .line 367
    .line 368
    const-class v0, Lio/sentry/protocol/SentryException;

    .line 369
    .line 370
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    new-instance p0, Lio/sentry/SentryItemType$Deserializer;

    .line 374
    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    .line 377
    .line 378
    const-class v0, Lio/sentry/SentryItemType;

    .line 379
    .line 380
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    new-instance p0, Lio/sentry/SentryLevel$Deserializer;

    .line 384
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    .line 387
    .line 388
    const-class v0, Lio/sentry/SentryLevel;

    .line 389
    .line 390
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    new-instance p0, Lio/sentry/SentryLockReason$Deserializer;

    .line 394
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    .line 397
    .line 398
    const-class v0, Lio/sentry/SentryLockReason;

    .line 399
    .line 400
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    new-instance p0, Lio/sentry/SentryLogEvents$Deserializer;

    .line 404
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    .line 407
    .line 408
    const-class v0, Lio/sentry/SentryLogEvents;

    .line 409
    .line 410
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    new-instance p0, Lio/sentry/SentryMetricsEvents$Deserializer;

    .line 414
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    .line 417
    .line 418
    const-class v0, Lio/sentry/SentryMetricsEvents;

    .line 419
    .line 420
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    new-instance p0, Lio/sentry/protocol/SentryPackage$Deserializer;

    .line 424
    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    .line 427
    .line 428
    const-class v0, Lio/sentry/protocol/SentryPackage;

    .line 429
    .line 430
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    new-instance p0, Lio/sentry/protocol/SentryRuntime$Deserializer;

    .line 434
    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    .line 437
    .line 438
    const-class v0, Lio/sentry/protocol/SentryRuntime;

    .line 439
    .line 440
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    new-instance p0, Lio/sentry/SentryReplayEvent$Deserializer;

    .line 444
    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    .line 447
    .line 448
    const-class v0, Lio/sentry/SentryReplayEvent;

    .line 449
    .line 450
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    new-instance p0, Lio/sentry/protocol/SentrySpan$Deserializer;

    .line 454
    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    .line 457
    .line 458
    const-class v0, Lio/sentry/protocol/SentrySpan;

    .line 459
    .line 460
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    new-instance p0, Lio/sentry/protocol/SentryStackFrame$Deserializer;

    .line 464
    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    .line 467
    .line 468
    const-class v0, Lio/sentry/protocol/SentryStackFrame;

    .line 469
    .line 470
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    new-instance p0, Lio/sentry/protocol/SentryStackTrace$Deserializer;

    .line 474
    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    .line 477
    .line 478
    const-class v0, Lio/sentry/protocol/SentryStackTrace;

    .line 479
    .line 480
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    new-instance p0, Lio/sentry/SentryAppStartProfilingOptions$Deserializer;

    .line 484
    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    .line 487
    .line 488
    const-class v0, Lio/sentry/SentryAppStartProfilingOptions;

    .line 489
    .line 490
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    new-instance p0, Lio/sentry/protocol/SentryThread$Deserializer;

    .line 494
    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    .line 497
    .line 498
    const-class v0, Lio/sentry/protocol/SentryThread;

    .line 499
    .line 500
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    new-instance p0, Lio/sentry/protocol/SentryTransaction$Deserializer;

    .line 504
    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    .line 507
    .line 508
    const-class v0, Lio/sentry/protocol/SentryTransaction;

    .line 509
    .line 510
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    new-instance p0, Lio/sentry/Session$Deserializer;

    .line 514
    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    .line 517
    .line 518
    const-class v0, Lio/sentry/Session;

    .line 519
    .line 520
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    new-instance p0, Lio/sentry/SpanContext$Deserializer;

    .line 524
    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    .line 527
    .line 528
    const-class v0, Lio/sentry/SpanContext;

    .line 529
    .line 530
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    new-instance p0, Lio/sentry/SpanId$Deserializer;

    .line 534
    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    .line 537
    .line 538
    const-class v0, Lio/sentry/SpanId;

    .line 539
    .line 540
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    new-instance p0, Lio/sentry/SpanStatus$Deserializer;

    .line 544
    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    .line 547
    .line 548
    const-class v0, Lio/sentry/SpanStatus;

    .line 549
    .line 550
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    new-instance p0, Lio/sentry/protocol/User$Deserializer;

    .line 554
    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    .line 557
    .line 558
    const-class v0, Lio/sentry/protocol/User;

    .line 559
    .line 560
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    new-instance p0, Lio/sentry/protocol/Geo$Deserializer;

    .line 564
    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    .line 567
    .line 568
    const-class v0, Lio/sentry/protocol/Geo;

    .line 569
    .line 570
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    new-instance p0, Lio/sentry/UserFeedback$Deserializer;

    .line 574
    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    .line 577
    .line 578
    const-class v0, Lio/sentry/UserFeedback;

    .line 579
    .line 580
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    new-instance p0, Lio/sentry/clientreport/ClientReport$Deserializer;

    .line 584
    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    .line 587
    .line 588
    const-class v0, Lio/sentry/clientreport/ClientReport;

    .line 589
    .line 590
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    new-instance p0, Lio/sentry/protocol/ViewHierarchyNode$Deserializer;

    .line 594
    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    .line 597
    .line 598
    const-class v0, Lio/sentry/protocol/ViewHierarchyNode;

    .line 599
    .line 600
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    new-instance p0, Lio/sentry/protocol/ViewHierarchy$Deserializer;

    .line 604
    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    .line 607
    .line 608
    const-class v0, Lio/sentry/protocol/ViewHierarchy;

    .line 609
    .line 610
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 4

    .line 1
    const-string v0, "The entity is required."

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/JsonSerializer;->a:Lio/sentry/SentryOptions;

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 13
    .line 14
    invoke-interface {v1, v2}, Lio/sentry/ILogger;->d(Lio/sentry/SentryLevel;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isEnablePrettySerializationOutput()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p0, p1, v1}, Lio/sentry/JsonSerializer;->f(Ljava/lang/Object;Z)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v3, "Serializing object: %s"

    .line 33
    .line 34
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-interface {v1, v2, v3, p0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    new-instance p0, Lio/sentry/JsonObjectWriter;

    .line 42
    .line 43
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getMaxDepth()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-direct {p0, p2, v1}, Lio/sentry/JsonObjectWriter;-><init>(Ljava/io/Writer;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v1, p0, Lio/sentry/JsonObjectWriter;->b:Lio/sentry/JsonObjectSerializer;

    .line 55
    .line 56
    invoke-virtual {v1, p0, v0, p1}, Lio/sentry/JsonObjectSerializer;->a(Lio/sentry/JsonObjectWriter;Lio/sentry/ILogger;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final b(Lio/sentry/SentryEnvelope;Ljava/io/OutputStream;)V
    .locals 6

    .line 1
    const-string v0, "\n"

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/JsonSerializer;->a:Lio/sentry/SentryOptions;

    .line 4
    .line 5
    const-string v1, "The SentryEnvelope object is required."

    .line 6
    .line 7
    invoke-static {p1, v1}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 11
    .line 12
    invoke-direct {v1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Ljava/io/BufferedWriter;

    .line 16
    .line 17
    new-instance v3, Ljava/io/OutputStreamWriter;

    .line 18
    .line 19
    sget-object v4, Lio/sentry/JsonSerializer;->c:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    invoke-direct {v3, v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 25
    .line 26
    .line 27
    :try_start_0
    iget-object v1, p1, Lio/sentry/SentryEnvelope;->a:Lio/sentry/SentryEnvelopeHeader;

    .line 28
    .line 29
    new-instance v3, Lio/sentry/JsonObjectWriter;

    .line 30
    .line 31
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getMaxDepth()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-direct {v3, v2, v4}, Lio/sentry/JsonObjectWriter;-><init>(Ljava/io/Writer;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v1, v3, v4}, Lio/sentry/SentryEnvelopeHeader;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p1, Lio/sentry/SentryEnvelope;->b:Ljava/lang/Iterable;

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lio/sentry/SentryEnvelopeItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    :try_start_1
    invoke-virtual {v1}, Lio/sentry/SentryEnvelopeItem;->f()[B

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    iget-object v1, v1, Lio/sentry/SentryEnvelopeItem;->a:Lio/sentry/SentryEnvelopeItemHeader;

    .line 71
    .line 72
    new-instance v4, Lio/sentry/JsonObjectWriter;

    .line 73
    .line 74
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getMaxDepth()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    invoke-direct {v4, v2, v5}, Lio/sentry/JsonObjectWriter;-><init>(Ljava/io/Writer;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v1, v4, v5}, Lio/sentry/SentryEnvelopeItemHeader;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    goto :goto_1

    .line 103
    :catch_0
    move-exception v1

    .line 104
    :try_start_2
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 109
    .line 110
    const-string v5, "Failed to create envelope item. Dropping it."

    .line 111
    .line 112
    invoke-interface {v3, v4, v5, v1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :goto_1
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 121
    .line 122
    .line 123
    throw p0
.end method

.method public final c(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lio/sentry/JsonSerializer;->f(Ljava/lang/Object;Z)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public final d(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/JsonSerializer;->a:Lio/sentry/SentryOptions;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Lio/sentry/JsonObjectReader;

    .line 5
    .line 6
    invoke-direct {v2, p1}, Lio/sentry/JsonObjectReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    :try_start_1
    iget-object p0, p0, Lio/sentry/JsonSerializer;->b:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lio/sentry/JsonDeserializer;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p0, v2, p1}, Lio/sentry/JsonDeserializer;->a(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p2, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Lio/sentry/JsonObjectReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 32
    .line 33
    .line 34
    return-object p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    goto :goto_4

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_2

    .line 39
    :cond_0
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_2

    .line 44
    .line 45
    const-class p0, Ljava/util/Collection;

    .line 46
    .line 47
    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-nez p0, :cond_2

    .line 52
    .line 53
    const-class p0, Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-nez p0, :cond_2

    .line 60
    .line 61
    const-class p0, Ljava/util/Map;

    .line 62
    .line 63
    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 64
    .line 65
    .line 66
    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 67
    if-eqz p0, :cond_1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Lio/sentry/JsonObjectReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 71
    .line 72
    .line 73
    return-object v1

    .line 74
    :cond_2
    :goto_1
    :try_start_5
    invoke-virtual {v2}, Lio/sentry/JsonObjectReader;->G0()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 78
    goto :goto_0

    .line 79
    :goto_2
    :try_start_6
    invoke-virtual {v2}, Lio/sentry/JsonObjectReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :catchall_1
    move-exception p1

    .line 84
    :try_start_7
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    :goto_3
    throw p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 88
    :goto_4
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 93
    .line 94
    const-string v0, "Error when deserializing"

    .line 95
    .line 96
    invoke-interface {p1, p2, v0, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    return-object v1
.end method

.method public final e(Ljava/io/BufferedInputStream;)Lio/sentry/SentryEnvelope;
    .locals 2

    .line 1
    iget-object p0, p0, Lio/sentry/JsonSerializer;->a:Lio/sentry/SentryOptions;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getEnvelopeReader()Lio/sentry/IEnvelopeReader;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lio/sentry/IEnvelopeReader;->a(Ljava/io/BufferedInputStream;)Lio/sentry/SentryEnvelope;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 18
    .line 19
    const-string v1, "Error deserializing envelope."

    .line 20
    .line 21
    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public final f(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lio/sentry/JsonObjectWriter;

    .line 7
    .line 8
    iget-object p0, p0, Lio/sentry/JsonSerializer;->a:Lio/sentry/SentryOptions;

    .line 9
    .line 10
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getMaxDepth()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-direct {v1, v0, v2}, Lio/sentry/JsonObjectWriter;-><init>(Ljava/io/Writer;I)V

    .line 15
    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    const-string p2, "\t"

    .line 20
    .line 21
    invoke-virtual {v1, p2}, Lio/sentry/JsonObjectWriter;->d(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget-object p2, v1, Lio/sentry/JsonObjectWriter;->b:Lio/sentry/JsonObjectSerializer;

    .line 29
    .line 30
    invoke-virtual {p2, v1, p0, p1}, Lio/sentry/JsonObjectSerializer;->a(Lio/sentry/JsonObjectWriter;Lio/sentry/ILogger;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method
