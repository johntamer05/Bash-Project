# 👥 Bash Scripting Project – User & Group Management

## 📌 Project Overview

This Bash scripting project provides a simple **menu-driven interface** to manage users and groups on a Linux system. It's designed to help system administrators automate repetitive tasks related to:

- Creating and deleting users
- Creating and deleting groups
- Adding users to groups
- Viewing user/group info
- Exiting the script safely

---

## 🧰 Features

- ✅ Create a new user
- ✅ Delete an existing user
- ✅ Create a new group
- ✅ Delete a group
- ✅ Add user to group
- ✅ Display users and groups
- ✅ Exit option to close the script

---

## 🗂️ File Structure

```bash
.
├── user-group-manager.sh    # Main script file
└── README.md                # Project description
```

---

## 🚀 How to Use

1. **Give execute permission**:
```bash
chmod +x user-group-manager.sh
```

2. **Run the script with sudo**:
```bash
sudo ./user-group-manager.sh
```

3. **Use the menu** to choose actions like:

```
1) Create User
2) Delete User
3) Create Group
4) Delete Group
5) Add User to Group
6) Show All Users/Groups
0) Exit
```

---

## 🖥️ Sample Output

```bash
========== User & Group Management ==========
1) Create User
2) Delete User
3) Create Group
4) Delete Group
5) Add User to Group
6) View All Users & Groups
0) Exit
Enter your choice: _
```

---

## 🔐 Requirements

- Bash shell
- Root/sudo privileges
- Linux OS (tested on CentOS)

---

## 📚 Skills Demonstrated

- Bash scripting (menu, conditionals, loops)
- System commands (`useradd`, `groupadd`, `usermod`, etc.)
- Input validation
- Modular function-based design
