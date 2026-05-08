[0;1;32m●[0m docker.service - Docker Application Container Engine
     Loaded: loaded (]8;;file://instance-20260508-133302/usr/lib/systemd/system/docker.service/usr/lib/systemd/system/docker.service]8;;; [0;1;32menabled[0m; preset: [0;1;32menabled[0m)
     Active: [0;1;32mactive (running)[0m since Fri 2026-05-08 13:40:06 UTC; 2min 6s ago
TriggeredBy: [0;1;32m●[0m docker.socket
       Docs: ]8;;https://docs.docker.comhttps://docs.docker.com]8;;
   Main PID: 3387 (dockerd)
      Tasks: 12
     Memory: 32.6M (peak: 33.8M)
        CPU: 973ms
     CGroup: /system.slice/docker.service
             └─[0;38;5;245m3387 /usr/bin/dockerd -H fd:// --containerd=/run/containerd/containerd.sock[0m

May 08 13:40:06 instance-20260508-133302 dockerd[3387]: time="2026-05-08T13:40:06.306165953Z" level=info msg="Initializing buildkit"
May 08 13:40:06 instance-20260508-133302 dockerd[3387]: time="2026-05-08T13:40:06.328454281Z" level=info msg="Completed buildkit initialization"
May 08 13:40:06 instance-20260508-133302 dockerd[3387]: time="2026-05-08T13:40:06.337825167Z" level=info msg="Daemon has completed initialization"
May 08 13:40:06 instance-20260508-133302 dockerd[3387]: time="2026-05-08T13:40:06.337956770Z" level=info msg="API listen on /run/docker.sock"
May 08 13:40:06 instance-20260508-133302 systemd[1]: Started docker.service - Docker Application Container Engine.
May 08 13:40:16 instance-20260508-133302 dockerd[3387]: time="2026-05-08T13:40:16.755540493Z" level=info msg="image pulled" digest="sha256:f9078146db2e05e794366b1bfe584a14ea6317f44027d10ef7dad65279026885" remote="docker.io/library/hello-world:latest"
May 08 13:40:17 instance-20260508-133302 dockerd[3387]: time="2026-05-08T13:40:17.480024866Z" level=info msg="sbJoin: gwep4 ''->'3fac26ed899a', gwep6 ''->''" eid=3fac26ed899a ep=intelligent_darwin net=bridge nid=5b4c28584dfe
May 08 13:40:17 instance-20260508-133302 dockerd[3387]: time="2026-05-08T13:40:17.542706891Z" level=info msg="received task-delete event from containerd" container=f7872e387e793db9f9276778a3a11fc3040c4bf9e5a7ffb66c73121abdd8f56a module=libcontainerd namespace=moby topic=/tasks/delete type="*events.TaskDelete"
May 08 13:40:51 instance-20260508-133302 dockerd[3387]: time="2026-05-08T13:40:51.676565708Z" level=info msg="sbJoin: gwep4 ''->'c06f966ba650', gwep6 ''->''" eid=c06f966ba650 ep=serene_shockley net=bridge nid=5b4c28584dfe
May 08 13:40:51 instance-20260508-133302 dockerd[3387]: time="2026-05-08T13:40:51.726582593Z" level=info msg="received task-delete event from containerd" container=9887c9f5b674344abe0553940809ae2eaf47f900385e06a5e8ed0cdfadda10e3 module=libcontainerd namespace=moby topic=/tasks/delete type="*events.TaskDelete"
