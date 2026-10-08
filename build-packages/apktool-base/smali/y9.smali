.class public final synthetic Ly9;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lcom/google/firebase/datastorage/JavaDataStorage;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/datastorage/JavaDataStorage;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly9;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Ly9;->k:Lcom/google/firebase/datastorage/JavaDataStorage;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Ly9;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Ly9;->k:Lcom/google/firebase/datastorage/JavaDataStorage;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroid/content/Context;

    .line 9
    .line 10
    sget-object v0, Lcom/google/firebase/datastorage/JavaDataStorage;->d:[Lkotlin/reflect/KProperty;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/google/firebase/datastorage/JavaDataStorage;->a:Ljava/lang/String;

    .line 16
    .line 17
    sget-object v0, Landroidx/datastore/preferences/SharedPreferencesMigrationKt;->a:Ljava/util/LinkedHashSet;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroidx/datastore/migrations/SharedPreferencesMigration;

    .line 23
    .line 24
    invoke-static {v0}, Landroidx/datastore/preferences/SharedPreferencesMigrationKt;->b(Ljava/util/Set;)Lkotlin/jvm/functions/Function2;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {}, Landroidx/datastore/preferences/SharedPreferencesMigrationKt;->a()Lkotlin/jvm/functions/Function3;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-direct {v1, p1, p0, v0, v2}, Landroidx/datastore/migrations/SharedPreferencesMigration;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :pswitch_0
    check-cast p1, Landroidx/datastore/core/CorruptionException;

    .line 41
    .line 42
    sget-object v0, Lcom/google/firebase/datastorage/JavaDataStorage;->d:[Lkotlin/reflect/KProperty;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    const-class v0, Lcom/google/firebase/datastorage/JavaDataStorage;

    .line 48
    .line 49
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->c()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v2, "CorruptionException in "

    .line 60
    .line 61
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lcom/google/firebase/datastorage/JavaDataStorage;->a:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p0, " DataStore running in process "

    .line 70
    .line 71
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .line 87
    .line 88
    new-instance p0, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 89
    .line 90
    const/4 p1, 0x1

    .line 91
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/core/MutablePreferences;-><init>(Z)V

    .line 92
    .line 93
    .line 94
    return-object p0

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
