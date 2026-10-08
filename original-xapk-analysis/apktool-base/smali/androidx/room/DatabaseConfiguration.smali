.class public Landroidx/room/DatabaseConfiguration;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

.field public final d:Landroidx/room/RoomDatabase$MigrationContainer;

.field public final e:Ljava/util/List;

.field public final f:Z

.field public final g:Landroidx/room/RoomDatabase$JournalMode;

.field public final h:Ljava/util/concurrent/Executor;

.field public final i:Ljava/util/concurrent/Executor;

.field public final j:Landroid/content/Intent;

.field public final k:Z

.field public final l:Z

.field public final m:Ljava/util/Set;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/io/File;

.field public final p:Ljava/util/concurrent/Callable;

.field public final q:Ljava/util/List;

.field public final r:Ljava/util/List;

.field public final s:Z

.field public final t:Landroidx/sqlite/SQLiteDriver;

.field public final u:Lkotlin/coroutines/CoroutineContext;

.field public v:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Ljava/util/List;Ljava/util/List;ZLandroidx/sqlite/SQLiteDriver;Lkotlin/coroutines/CoroutineContext;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p18 .. p18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Landroidx/room/DatabaseConfiguration;->a:Landroid/content/Context;

    .line 23
    .line 24
    iput-object p2, p0, Landroidx/room/DatabaseConfiguration;->b:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p3, p0, Landroidx/room/DatabaseConfiguration;->c:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    .line 27
    .line 28
    iput-object p4, p0, Landroidx/room/DatabaseConfiguration;->d:Landroidx/room/RoomDatabase$MigrationContainer;

    .line 29
    .line 30
    iput-object p5, p0, Landroidx/room/DatabaseConfiguration;->e:Ljava/util/List;

    .line 31
    .line 32
    iput-boolean p6, p0, Landroidx/room/DatabaseConfiguration;->f:Z

    .line 33
    .line 34
    iput-object p7, p0, Landroidx/room/DatabaseConfiguration;->g:Landroidx/room/RoomDatabase$JournalMode;

    .line 35
    .line 36
    iput-object p8, p0, Landroidx/room/DatabaseConfiguration;->h:Ljava/util/concurrent/Executor;

    .line 37
    .line 38
    iput-object p9, p0, Landroidx/room/DatabaseConfiguration;->i:Ljava/util/concurrent/Executor;

    .line 39
    .line 40
    iput-object p10, p0, Landroidx/room/DatabaseConfiguration;->j:Landroid/content/Intent;

    .line 41
    .line 42
    iput-boolean p11, p0, Landroidx/room/DatabaseConfiguration;->k:Z

    .line 43
    .line 44
    iput-boolean p12, p0, Landroidx/room/DatabaseConfiguration;->l:Z

    .line 45
    .line 46
    iput-object p13, p0, Landroidx/room/DatabaseConfiguration;->m:Ljava/util/Set;

    .line 47
    .line 48
    iput-object p14, p0, Landroidx/room/DatabaseConfiguration;->n:Ljava/lang/String;

    .line 49
    .line 50
    iput-object p15, p0, Landroidx/room/DatabaseConfiguration;->o:Ljava/io/File;

    .line 51
    .line 52
    move-object/from16 p1, p16

    .line 53
    .line 54
    iput-object p1, p0, Landroidx/room/DatabaseConfiguration;->p:Ljava/util/concurrent/Callable;

    .line 55
    .line 56
    move-object/from16 p1, p17

    .line 57
    .line 58
    iput-object p1, p0, Landroidx/room/DatabaseConfiguration;->q:Ljava/util/List;

    .line 59
    .line 60
    move-object/from16 p1, p18

    .line 61
    .line 62
    iput-object p1, p0, Landroidx/room/DatabaseConfiguration;->r:Ljava/util/List;

    .line 63
    .line 64
    move/from16 p1, p19

    .line 65
    .line 66
    iput-boolean p1, p0, Landroidx/room/DatabaseConfiguration;->s:Z

    .line 67
    .line 68
    move-object/from16 p1, p20

    .line 69
    .line 70
    iput-object p1, p0, Landroidx/room/DatabaseConfiguration;->t:Landroidx/sqlite/SQLiteDriver;

    .line 71
    .line 72
    move-object/from16 p1, p21

    .line 73
    .line 74
    iput-object p1, p0, Landroidx/room/DatabaseConfiguration;->u:Lkotlin/coroutines/CoroutineContext;

    .line 75
    .line 76
    const/4 p1, 0x1

    .line 77
    iput-boolean p1, p0, Landroidx/room/DatabaseConfiguration;->v:Z

    .line 78
    .line 79
    return-void
.end method
