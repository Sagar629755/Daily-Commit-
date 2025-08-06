#!/data/data/com.termux/files/usr/bin/bash

# তোমার Git রিপোজিটরির লোকেশন
cd /data/data/com.termux/files/home/Daily-Commit- || {
  echo "❌ Repo path ভুল।" 
  exit 1
}

# কমিট মেসেজ নাও
echo -n "📦 Commit মেসেজ লিখো: "
read msg

# Git অটো অ্যাড, সাইনড কমিট এবং পুশ
git add .
git commit -S -m "$msg"
git push

echo "✅ Commit এবং push সফল!"
